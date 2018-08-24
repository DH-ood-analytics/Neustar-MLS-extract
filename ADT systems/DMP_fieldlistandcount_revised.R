### GLOBAL VARIABLE ###
username <- Sys.getenv("USERNAME")
#######################


require(dplyr)
require(sqldf)

#use this function to convert desired fields to lowercase and trim the whitespace from both ends
toLower_cleanWS <- function(df, fields = NA, doLowercase = T, dobothTrim = T, catchBlank = F) {
  #for each field in the 'fields vector, convert change to lowercase and trim front and back of whitespace
  if(sum(is.na(fields)) < 1) {
    if(doLowercase) {
      df[,fields] <- sapply(df[,fields], tolower)
      print(paste(fields, "changed to lowercase"))
    }
    if(dobothTrim) {
      df[,fields] <- sapply(df[,fields], trimws, which = "both")
      print(paste(fields, "trimmed whitespace"))
    }
    return(df)
  }
  print("no change to fields")
  return(df)
}

#VALUE COMPARISON
setwd(paste0("C:/Users/", username, "/Box Sync/github_local/Neustar_MLS_Extract/field_values/dmp_only"))
previous_fieldsandvalues_dmponly <- read.table("nsr_fieldsandvalues_dmponly_20180723.txt", sep="\t", quote="", comment.char = "", fill = T, skipNul = T, stringsAsFactors = F)
current_fieldsandvalues_dmponly <- read.table("nsr_fieldsandvalues_dmponly_20180724.txt", sep="\t", quote="", comment.char = "", fill = T, skipNul = T, stringsAsFactors = F)

names(previous_fieldsandvalues_dmponly) <- c("field_name", "field_value")
names(current_fieldsandvalues_dmponly) <- c("field_name", "field_value")

#clean up the data to ensure no erroneous misses
previous_fieldsandvalues_dmponly <- toLower_cleanWS(previous_fieldsandvalues_dmponly, c("field_name", "field_value"), dobothTrim = F)
current_fieldsandvalues_dmponly <- toLower_cleanWS(current_fieldsandvalues_dmponly, c("field_name", "field_value"), dobothTrim = F)

#create key/value pair as join key to avoid confusing from fields like 'surgicalprocedure1', 'surgicalprocedure2'
current_fieldsandvalues_dmponly$joinkey <- paste(current_fieldsandvalues_dmponly$field_name, current_fieldsandvalues_dmponly$field_value, sep="-")
previous_fieldsandvalues_dmponly$joinkey <- paste(previous_fieldsandvalues_dmponly$field_name, previous_fieldsandvalues_dmponly$field_value, sep="-")

#check identical
current_fieldsandvalues_dmponly <- current_fieldsandvalues_dmponly[order(current_fieldsandvalues_dmponly$joinkey),]
previous_fieldsandvalues_dmponly <- previous_fieldsandvalues_dmponly[order(previous_fieldsandvalues_dmponly$joinkey),]
identical(current_fieldsandvalues_dmponly, previous_fieldsandvalues_dmponly)

#create differences data frames
new_values <- current_fieldsandvalues_dmponly[which(!current_fieldsandvalues_dmponly$joinkey %in% previous_fieldsandvalues_dmponly$joinkey),]
dropped_values <- previous_fieldsandvalues_dmponly[which(!previous_fieldsandvalues_dmponly$joinkey %in% current_fieldsandvalues_dmponly$joinkey),]

#create 'update' flag on current file
current_fav_dmponly_withupd <- sqldf(
"SELECT a.field_name, a.field_value, a.joinkey, b.joinkey as update_key FROM current_fieldsandvalues_dmponly as a LEFT JOIN new_values as b ON a.joinkey=b.joinkey"
)

#change joinkey to "update" flag
current_fav_dmponly_withupd$update_key <- ifelse(is.na(current_fav_dmponly_withupd$update_key), "", "update")
current_fav_dmponly_withupd$joinkey <- NULL

#append the dropped values to the final table for information purposes only
dropped_values$joinkey <- NULL
dropped_values$update_key <- "dropped_values"

outp <- rbind(current_fav_dmponly_withupd, dropped_values)

#just cut to the changes
outp <- outp[which(outp$update_key!=""),]



setwd(paste0("C:/Users/", username, "/Box Sync/github_local/Neustar_MLS_Extract/output"))
#write.csv(outp, "nsr_p1_updaterecords_20180724.csv", row.names = F, na = "")

#in development--may use to get min/max for date columns and then group all 'error' values underneath
#wadis <- current_fieldsandvalues_dmponly %>% filter(field_name=="admissiondate") %>% filter(field_value!="admissiondate") %>% mutate(validdate = grepl("^20[0-2][0-9]",field_value)) %>% filter(validdate==T)
#current_fieldsandvalues_dmponly %>% filter(field_name=="dateofbirth") %>% filter(!(field_value=="dateofbirth" | field_value=="" | field_value=='00000')) %>% summarise(min(field_value))

