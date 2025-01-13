##
## Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
## Creation Date: Sun Feb 25 21:38:46 PST 2024
## Last Modified: Mon Jan 13 02:45:38 PST 2025
## Filename:      Makefile
## URL:           http://github.com/humdrum-tools/humdrum-data/tree/main/Makefile
## Syntax:        GNU Makefile
##
## Description:   Manage downloading of Humdrum files from various
##                GitHub repositories.
##
## Usage:
##     default:   Download complete list of Humdrum files.
##     clear:     Delete all downloaded Humdrum files. (Does not
##                   delete any local files.)
##     nc:        Generate a list of note counts for each download directory
##                   and give a total sum of notes and downloaded file.
##     cu:        Check if updates are needed.
##     readme:    Regenerate README.md file (for maintenance only and not
##                   particularly for general use).
##
## In addition the % target is used to download subsets of Humdrum
## files.  The allowed targets are based on the filenames in
## .lists/LIST-*.txt.  Example list targets:
##
##      make              Download complete set of files.
##      make 1520s-short  The 1520s Project digital scores, ID only filenames
##      make 1520s        The 1520s Project digital scores
##      make cantopop     A corpus of Cantonese popular music, 2000–2020
##      make chorales     370 J.S. Bach four-part harmonized chorales
##      make densmore     Native American songs collected by Francis Densmore
##      make joplin       Piano music by Scott Joplin
##      make jrp          Josquin Research Project digital scores
##      make mysterium    Mysterium: Piano music of Scriabin
##      make popc2-short  Polish Music in Open Access digital scores, ID only filenames
##      make popc2        Polish Music in Open Access digital scores
##      make sonatas      Classical piano sonatas of Beethoven (complete), Mozart (complete), and Haydn (selections)
##      make tasso        Tasso in Music Project digital scores
##      make tonerow      Tonerows used by Schoenberg, Berg and Webern
##
## You can create your own .lists/LIST-*.txt file(s) and run with make.  For
## example, create a file called .lists/LIST-mylist.txt based on other examples
## in that directory, and then you can compile the list with the command
## "make mylist"
##

SHELL := /bin/sh

# List of targets that should not be processed by %:
NONLISTS := check-update clean cu nc ncs note-count note-counts notecount \
	notecounts readme pc timp make-lists

.DEFAULT_GOAL := %

# Location of scripts used in this makefile:
BINDIR=bin

# Location of the LIST files:
LISTDIR=.lists

###########################################################################

# Remove downloaded repositories and links to file in them:
clean:
	-rm -rf .source
	$(BINDIR)/deleteBrokenLinks

# See if any online repositories have been updated:
cu: check-update
check-update:
	$(BINDIR)/checkIfNeedUpdates -v

# Create the README.md file in the root directory:
readme:
	$(BINDIR)/makeReadme > README.md

# Count number of notes in local directories (symbolic links only):
ncs: notecount
nc: notecount
note-count: notecount
note-counts: notecount
notecounts: notecount
notecount:
	@$(BINDIR)/getNoteCount

# Generate complicated LIST files:
make-lists: pc timp timp-year

# Create/update the polish-composers LIST:
pc:
	$(BINDIR)/makePolishCommposerList > .lists/LIST-polish-composers.txt

# Create/update the tasso-composer LIST:
timp:
	$(BINDIR)/makeTassoComposerList > .lists/LIST-tasso-composers.txt

# Create/update the tasso-publication-year LIST:
timp-year:
	$(BINDIR)/makeTassoYearList > .lists/LIST-tasso-publication-year.txt

# Download the entire dataset or specific subsets:
%:
	@if echo "$(NONLISTS)" | grep -w -q "$@"; then \
		echo "Target $@ is not a valid list."; \
	elif [ "$@" = "%" ]; then \
		$(BINDIR)/processList .lists/LIST.txt; \
	else \
		$(BINDIR)/processList ".lists/LIST-$@.txt"; \
	fi

