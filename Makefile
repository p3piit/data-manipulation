# -*- Makefile -*-

all: index.html

## Activate the renv project and install the packages listed in renv.lock:
init:
	Rscript ./R/init_project.R
	Rscript ./R/restore_library.R

## Update the packages in the renv project library:
update:
	Rscript -e "renv::update()"

## Update the state of the lockfile to match the renv library state:
snapshot:
	Rscript -e "renv::snapshot()"

## Deactivate the renv project
deactivate:
	Rscript -e "renv::deactivate(clean = FALSE)"

## Render the website:
index.html: index.qmd tutorials/* quizzes/*
	quarto render

.PHONY: init update snapshot deactivate
