### GLOBAL VARIABLE ###
username <- Sys.getenv("USERNAME")
#######################


#need to run 'DMP_fieldlistandcount_revised.R to get the object "current_fav_dmponly_withupd"
#The object contains the field names and values for those which are ingested into the DMP, which are up to date based on the most recent run date
#in the 'current' object.

setwd(paste0("C:/Users/", username, "/Box Sync/github_local/Neustar_MLS_Extract/input"))
write.csv(current_fav_dmponly_withupd, "inclusion_list_v1.csv", row.names=F)


#  General rules for the Inclusion List

#dates must be represented as yyyymmdd
#dates may extend beyond the current date; however, they may only do so until the end of the current year.
  #e.g. if today is 3/1/2018: 4/1/2018 is acceptable, but 4/1/2019 is not acceptable. The final 'acceptable' date is 12/31/2018.

