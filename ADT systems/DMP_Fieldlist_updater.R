### GLOBAL VARIABLE ###
username <- Sys.getenv("USERNAME")
#######################

require(readxl)

setwd(paste0("C:/Users/", username, "/Box Sync/github_local/Neustar_MLS_Extract/archive"))

prev <- read_excel("Neustar_Schema-data_dictionary_V02.xlsx", sheet= "Segment Layout", col_types = "text")

setwd(paste0("C:/Users/", username, "/Box Sync/github_local/Neustar_MLS_Extract"))

new <- read_excel("FieldProfiles_20180614.xlsx", sheet = "Sheet", col_types= "text")
names(new) <- c("field_name", "field_value")

prev$prev_key <- paste0(prev$`Column Header`, prev$`Column Value`)
new$new_key <- paste0(new$field_name, new$field_value)

update_recs <- new[which(!new$new_key %in% prev$prev_key),]

new$update_recs <- ifelse(new$new_key %in% update_recs$new_key, "update", "")

new$new_key <- NULL

write.csv(new, "neustar_p1_updaterecords_20180614.csv", row.names = F)
