## humdrum-data GNU/BSD makefile.
##
## Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
## Creation Date: Tue Jun  3 15:57:08 PDT 2014
## Last Modified: Tue Jun  3 15:57:10 PDT 2014
## Filename:      ...humdrum-data/Makefile
##
## Description: This Makefile will process the humdrum-data repository.
##

# Targets which don't actually refer to files:
.PHONY : bach-js beethoven mozart haydn joplin jrp

###########################################################################
##
## Default target
##

all: help



###########################################################################
##
## help: Target to list main targets that the makefile can run
##

info: help
help:
	@echo
	@echo "Available make targets:"
	@echo "[0;32mmake[0m             -- Print this list."
	@echo "[0;32mmake update[0m      -- Download most recent versions of the data"
	@echo "[0m"



###########################################################################
##
## update: Update to the master branch of all submodules.
##

pull: update
update: 
	git pull origin main
ifneq ($(wildcard .gitmodules),) 
	git submodule sync
	git submodule update --init --recursive --remote
	git submodule foreach git pull origin main
endif



###########################################################################
##
## update: Update to the master branch of all submodules.
##

nc: notecount
note-count: notecount
note-counts: notecount
notecounts: notecount
notecount:
	@bin/getNoteCount

