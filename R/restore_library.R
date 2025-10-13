### Title:    Restore the renv project library
### Author:   Kyle M. Lang
### Modified: 2025-08-29

message("Restoring/synchronizing the project library.")
renv::restore(prompt = FALSE)
