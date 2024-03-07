##
## Programmer:    Craig Stuart Sapp <craig@ccrma.stanford.edu>
## Creation Date: Sun Feb 25 21:38:46 PST 2024
## Last Modified: Sun Feb 25 21:38:49 PST 2024
## Filename:      humdrum-data/Makefile
## URL:           http://github.com/humdrum-tools/humdrum-data/tree/main/Makefile
## Syntax:        GNU Makefile
##
## Description:   Manage downloading of Humdrum files from various
##                GitHub repositories.
##
## Usage:
##     all:       Download complete list of Humdrum files.
##     clear:     Delete all downloaded Humdrum files. (Does not
##                   delete any local files.)
##     nc:        Generate a list of note counts for each download directory
##                   and give a total sum of notes and downloaded file.
##     readme:    Regenerate README.md file (for maintenance only and not
##                   of general use).
##
## In addition the % target is used to download subsets of Humdrum
## files.  The allowed targets are based on the filenames in
## .lists/LIST-*.tsv.  Example list targets:
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
##      make nifc         Digital scores from The Fryderyk Chopin Institute (Chopin first editions (POPC1) and Polish Musical Heritage (1600-1900) in Open Access (POPC2))
##      make popc2-short  Polish Music in Open Access digital scores, ID only filenames
##      make popc2        Polish Music in Open Access digital scores
##      make sonatas      Classical piano sonatas of Beethoven (complete), Mozart (complete), and Haydn (selections)
##      make tasso        Tasso in Music Project digital scores
##      make tonerow      Tonerows used by Schoenberg, Berg and Webern
##    
## You can create your own .lists/LIST-*.tsv file(s) and run with make.  For
## exaple, create a file called .lists/LIST-mylist.tsv based on other examples
## in that directory, and then you can compile the list with the command 
## "make mylist"
##

.PHONY: all clean nc ncs note-count note-counts notecount notecounts readme

BINDIR=bin

NONLISTS := $(filter-out ncs nc note-count note-counts notecount notecounts readme clean all, $@)

all:
	$(BINDIR)/processList .lists/LIST.tsv

clean:
	-rm -rf .source
	$(BINDIR)/deleteBrokenLinks

readme:
	$(BINDIR)/makeReadme > README.md

ncs: notecount
nc: notecount
note-count: notecount
note-counts: notecount
notecounts: notecount
notecount:
	@$(BINDIR)/getNoteCount

%:
ifeq (,$(filter $(NONLISTS),$@))
	$(BINDIR)/processList .lists/LIST-$@.tsv
endif


