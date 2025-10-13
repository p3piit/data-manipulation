### Title:    Initialize the renv project
### Author:   Kyle M. Lang
### Modified: 2025-08-29

## Install 'renv' if it's not already available
if(!require(renv, quietly = TRUE)) install.packages(renv)

if(is.null(renv::project())) {
  message("This isn't an active renv project. So, I'm activating the project.")
  renv::activate()
} else {
  message("We're in an active renv project. Let's move on.")
}
