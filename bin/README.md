# Support scripts for the Humdrum-data repository #

[processList](processList)
:       This script parses LIST files, extracting data spines and
	converting them into command-line options for the
	[getRepositoryDirectory](getRepositoryDirectory) script,
	which is responsible for downloading specific subdirectories
	from online repositories. It is invoked by the `make` or
	`make tonerows` commands.

[getRepositoryDirectory](getRepositoryDirectory)
:       Manages the download process for a specified directory of
	a GitHub repository, providing options to rename local
	files, and include or exclude files from the downloaded
	repository. This script acts as a helper for the
	[processList](processList) script.

[deleteBrokenLinks](deleteBrokenLinks)
:       A helper script for the `make clean` process that
	recursively scans the local file structure for broken links
	(resulting from deleted repositories) and removes empty
	local directories.  Non-symbolic linked files remain
	unaffected, ensuring that any user-created files in the
	repository are not deleted. After executing `make clean`,
	run `make` to restore updated files in the local directory
	structure (for the full dataset, or commands such as `make
	sonatas` to re-download data subsets that you have previous
	installed).

[checkIfNeedUpdates](checkIfNeedUpdates)
:       Utilized by `make check-update` (`make cu`), this script
	identifies downloaded repositories that have been updated
	on GitHub since their initial download. Useful for keeping
	local copies synchronized with online sources.  Run `make clean`
	followed by `make` (or `make <subset>` based on previously
	downloaded data subsets, e.g., `make sonatas`) to incorporate
	online changes to the Humdrum files.

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
:       A script for generating the `README.md` file in the base
	directory of this repository. Typically run by the
	`humdrum-data` repository maintainer, it automatically
	compiles statistics about downloaded repositories and
	available data subsets from LIST files. While not necessary
	for general users, it can be executed if desired, offering
	insights into the repository's current content and usage.

[makePolishComposerList](makePolishComposerList)
:       A script for reorganizing POP2 scores from library
	sigla to composer, for maintenance use only and run with
	the command `make pc`.  This will update the
	`.lists/LIST-polish-composers.txt` file, from which the
	entries for polish composers in .lists/LIST.txt are copied
	(with a change in the local directory from `polish-composers`
	to `polish`).

[makeTassoComposerList](makeTassoComposerList)
:	Create script to organize Tasso in Music Project dataset
	by composer (in `tasso-composers` directory).  This script
	will update the `.lists/LIST-tasso-composers.txt` file
	when new composers are added to TiMP.  This LIST file is
	adjusted for the `LIST.txt` file for storing the files in
	the `early-music` directory.
	

[makeTassoYearList](makeTassoYearList)
:	Create script to organize Tasso in Music Project dataset
	by publication year (in `tasso-years` directory).  This script
	will update the `.lists/LIST-tasso-composers.txt` file
	when new composers are added to TiMP.



