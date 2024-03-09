# Support scripts for the Humdrum-data repository #

[processList](processList)
:       This script parses LIST files and prepares options from
	the data spines in LIST files into command-line options for
	the [getRepositoryDirectory](getRepositoryDirectory) script
	that does the actual downloading of an online repository
	subdirectory.  The `make` or `make tonerows` commands run
	this script, for example.

[getRepositoryDirectory](getRepositoryDirectory)
:       Manages downloading of a specific directory of a
	specific GitHub repository, with options to rename files
	for the local copy, and include or exclude files from the
	downloaded repository.  This is a helper script for
	[processList](processList).

[deleteBrokenLinks](deleteBrokenLinks)
:       This is a helper script for the `make clean` process.
	I recursively checks the local file structure for broken
	links (cause by deleting downloaded repositories), and
	deletes empty local directories.  Non-symbolic linked files
	are not affected by this script, so any files you create
	in this repository will not be deleted.  After running `make
	clean`, typically `make` would be run to restore updated
	files in the local directory structure.

[checkIfNeedUpdates](checkIfNeedUpdates)
:	Used by `make check-update` (`make cu`).  This script
	identifies downloaded repositories that have been updated
	on GitHub since they were downloaded.   This is useful
	if you want to keep your local copies up to date with the
	online sources.  If there are online changes, you can type
	`make clean` and them `make` (or `make <subset>` according
	to the subsets that you have downloaded (for example 
	`make sonatas` to download the `sonatas` data subset.

[getNoteCount](getNoteCount)
:       Used by `make note-counts` (`make nc`).  This script
	counts the number of notes in Humdrum files in the local
	directory structure.  A total count of notes, files and
	file sizes is given a the end of the output.  This script
	only counts notes in files that are symbolic links (to the
	downloaded repository files), and any real files you add
	locally will be ignored.  Downloaded files may be present
	in multiple local directories, and this script will not
	double count such files, since it keeps track of the `md5`
	checksums for files that it counts.

[makeReadme](makeReadme)
:       A script that creates the README.md file in the base directory
	of this repository.  Normally run by the maintainer of the
	`humdrum-data` repository and not by the general user (unless
	you really want to).  It automatically generates statistics
	about downloaded repositories and data subsets that can be
	downloaded from LIST files.



