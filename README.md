
# Humdrum Data #

Welcome to the **Humdrum Data** meta-repository – your gateway to
a rich collection of [Humdrum](https://www.humdrum.org) files sourced
from various GitHub repositories.  This platform allows you to
download and manage diverse datasets of musical scores on your local
computer, providing a flexible structure for finding and doing
computational research with pre-existing datasets.  You can also
contribute your own Humdrum datasets by posting them on GitHub and
submitting a
[request](https://github.com/humdrum-tools/humdrum-data/issues) for
them to be added to this meta-repository.

Whether you're a seasoned Unix user or a newcomer, this
repository simplifies the process of acquiring Humdrum files for
your musical endeavors.  This introduction guides you through essential
information, instructions for installation, and tips on customizing
your dataset downloads.

Currently this repository manages 25,679 files containing
17,989,078 sounding notes, with a total file size of 373.2MB.


## Summary ##

For experienced unix users, here are instructions for downloading
Humdrum files using this repository:

```bash
git clone https://github.com/humdrum-tools/humdrum-data
cd humdrum-data
make
```

To stay up-do-date, you can run `make check-update` (or `make cu` for short)
to see if any online repositories have changed since you last downloaded them.
Then, to update all repositories, run in the terminal:


```bash
make clean
make
```

This will delete all downloaded repository files (any files you have in
any local directories will not be deleted) and then re-download the
entire dataset again, restored to their original local directories.
Any of your own files in the local directory structure will be preserved
during this process.

If you have downloaded specific data subsets, such as the `sonatas`
dataset of Classical-era piano
[sonatas](https://github.com/humdrum-tools/humdrum-data/blob/main/.lists/LIST-sonatas.txt),
then you will have to re-download them after `make clean` as well:

```bash
make sonatas
```

Otherwise, see the following documentation more detailed instructions for downloading.

## Preliminaries ##

This repository uses the [git](https://en.wikipedia.org/wiki/Git)
and [make](https://en.wikipedia.org/wiki/Make_(software)#Derivatives)
commands, so they need to be installed on your computer before you
can download the Humdrum files.  The minimum version of git that can
be used is 2.25 from 2020.


### MacOS ###

If you are using a Mac, these two programs can best be installed
automatically by installing [Homebrew](https://brew.sh), which is
a unix package manager for MacOS.  When you install Homebrew, `git`
is installed automatically (along with the `make` command).


### Linux/unix ###

For linux computers, including Ubuntu in
[WSL2](https://learn.microsoft.com/en-us/windows/wsl/install) on
MS Windows, you may need to install the development tools if `make`
is not installed.  To check if `make ` is installed, type:

```bash
which make
```

The computer should reply with the location of the `make` command,
with a good response being something like:

```
/usr/bin/make
```

If the [which](https://en.wikipedia.org/wiki/Which_(command)) command
does not return any location, then `make` is not installed.

How to install `make` will be slightly different in various Linux
flavors, which includes these main possibilities:

| Linux Flavor  | Installation Command                             |
|---------------|------------------------------------------------- |
| Ubuntu        | `sudo apt-get install build-essential`           |
| Debian        | `sudo apt-get install build-essential`           |
| Fedora        | `sudo dnf groupinstall "Development Tools"`      |
| CentOS        | `sudo yum groupinstall "Development Tools"`      |
| RHEL          | `sudo yum groupinstall "Development Tools"`      |
| openSUSE      | `sudo zypper install --type pattern devel_basis` |
| Arch Linux    | `sudo pacman -S base-devel`                      |

If the version of Linux you use is not in the list, either try one
of the above commands or determine which package manager is used in
your version of linux.

This also applies to `git`, which would be installed in a similar
manner as `make`, such as `sudo apt-get install git` in Ubuntu.


### git caveat ###

Note that `git` 2.25.0 (2020) is the minimum version of `git` that
can be used with this repository.  You can check your version of
`git` with the command:

```bash
git -v
```

A good reply would be something like this:

```
git version 2.39.2 (Apple Git-143)
```

Upgrade your version of `git` if it is less than version 2.25 before
trying to download files for this repository.


## Downloading scores ##

First download this repository using git (although downloading from
GitHub as a [ZIP
file](https://github.com/humdrum-tools/humdrum-data/archive/refs/heads/main.zip)
also works), typing in the terminal:

```bash
git clone https://github.com/humdrum-tools/humdrum-data
```

This will create a subdirectory in the current working directory called
`humdrum-data`.  Next, move into the repository directory with this
command:

```bash
cd humdrum-data
```

To download all available Humdrum digital scores, type this command
in the base directory of this repository:

```bash
make
```

This will download all repositories found in the file
[.lists/LIST.txt](https://github.com/humdrum-tools/humdrum-data/blob/main/.lists/LIST.txt).
The
[.lists](https://github.com/humdrum-tools/humdrum-data/blob/main/.lists)
directory also contains other lists of data subsets that can
be downloaded individually if you do want specific datasets only, or alternate
arrangements of the complete dataset.

| Make target | Description |
| ----------- | ----------- |
| `make`      | Download all repository files |
| `make 1520s-short` | The 1520s Project digital scores, ID only filenames |
| `make 1520s` | The 1520s Project digital scores |
| `make cantopop` | A corpus of Cantonese popular music, 2000–2020 |
| `make chant` | Chant-based scores |
| `make chorales` | 370 J.S. Bach four-part harmonized chorales |
| `make densmore` | Native American songs collected by Francis Densmore |
| `make essen` | Essen Folksong Collection |
| `make joplin` | Piano music by Scott Joplin |
| `make jrp` | Josquin Research Project digital scores |
| `make nifc` | Digital scores from The Fryderyk Chopin Institute (Chopin first editions (POPC1) and Polish Musical Heritage (1600-1900) in Open Access (POPC2)) |
| `make polish-composers` | Composers represented in Polish archives |
| `make popc2-short` | Polish Music in Open Access digital scores, ID only filenames |
| `make popc2` | Polish Music in Open Access digital scores |
| `make psalms` | Psalm settings |
| `make seils` | SEILS dataset of Renaissance music |
| `make sonatas` | Classical piano sonatas of Beethoven (complete), Mozart (complete), and Haydn (selections) |
| `make tasso-composers` | Composers represented in Tasso in Music project dataset |
| `make tasso-publication-year` | Tasso in Music Project data organized by publication date |
| `make tasso` | Tasso in Music Project digital scores |
| `make tonerows` | Tonerows used by Schoenberg, Berg and Webern |



### Updating this meta-repository ###

To update this meta-repository using `git`, type:

```bash
git pull
```

Otherwise, if you downloaded as a ZIP file, re-download a new ZIP file from
the repository's [homepage](https://github.com/humdrum-tools/humdrum-data) on GitHub.

If you have changed any files of the repository files (LIST in
`.lists` or scripts in `bin`, then check to see what files you have changed:

```bash
git status
```

And to see the change in contets of the files:

```bash
git diff
```

If you have changes you do not want to keep, type:

```bash
git checkout
```

to remove any local changes (this will not change **untracked** files you
may have add to the local directory).

Then you will be able to run:

```bash
git pull
```

to update the meta-repository.  This could possibly include additions
to
[`.lists/LIST.txt`](https://github.com/humdrum-tools/humdrum-data/blob/.lists/LIST.txt)
or new LIST files for data subsets.  Also, enhancements and bug
fixes to the `Makefile` and scripts in the `bin` directory may be
available through an update using `git pull`.


### Checking if downloaded repositories need updating ###

To check if any of the downloaded repositories have been updated
on GitHub since you last downloaded the repositories, use the
command, type `make check-update` or `make cu` for short.  This
command will report any online repositories that are more recent
than the copy you downloaded.  Currently to update, you need to
run:

```
make clean
make
```

Which will re-download all repositories, including ones that do not
need updating.  In the future, a system to only download repositories
that have online updates may be implemented.


### Adding local files ###

If you store your own files in an existing local directory or a
directory that you created, they will not be deleted when `make
clean` is run.  This is accomplished by storing repository files
as symbolic links, and only symbolic links will be deleted when
changing the downloaded file structure.  For example, if you have
any of your own analysis files in `beethoven/piano/sonata`, they
will remain after running `make clean`.  Running `make` will restore
any updates for any repository files in the same directory.

Any edits you make to the downloaded repsitories will be lost
if you type `make clean` unless you copy the file first, such as
in the Beethoven sonatas directory:

```bash
cp -L sonata01-1.krn my-sonata01-1.krn
```

The `-L` option will conver the symbolic link from the
downloaded repository into a real file, and real files are
not deleted by `make clean`.


### Source information ###

Each local directory contains a file called `.info` that includes
a hyperlink to the source GitHub repository for files in the
directory.  If there are files from multiple repositories merged
into the same directory, there will be multiple `.info` files, such
as `.info2` for a second merged repository directory, `.info3` for
the third, and so on.

For example, if you run `make sonatas`, a directory called `sonatas`
will be created in the base directory of this repository with three
.info files (including `.info2` and `.info3`), giving information
about each source repository.  Below is the contents of `.info2`
for the Mozart sonatas in the `sonatas` dataset:

```tsv
!!!source:             https://github.com/craigsapp/mozart-piano-sonatas
!!!download-date:      2024-03-11 18:54:39 -0700
!!!last-commit:        https://github.com/craigsapp/mozart-piano-sonatas/tree/44330d18
!!!last-commit-date:   2023-06-18 10:32:56 -0700
!!!repository-license: https://github.com/craigsapp/mozart-piano-sonatas/blob/main/LICENSE.txt
!!!repository-readme:  https://github.com/craigsapp/mozart-piano-sonatas/blob/main/README.md
!! vim:                ts=39:nowrap
!!
!! Directories downloaded from this repository are listed below.
!!
!! Meaning of the spines:
!!    **sound   = Number of sounding notes in the copied files. If entry
!!                is a null token, then the Humdrum Extras notecount tool
!!                was not available when the repository was downloaded.
!!    **files   = Number of files in the copied directory.
!!    **bytes   = Size of files copied to local directory in bytes.
!!    **branch  = Repository branch from which files were copied.
!!    **from    = The subdirectory in the download repository listed in the
!!                "source" reference record above that files were copied from.
!!                A null token means the root of repository working directory.
!!    **to      = The subdirectory in the repository lised in the source
!!                reference record above that files were copied from.
!!                A null token means the root of target directory.
!!    **prefix  = Prefix string to add to copied filename (if any).
!!    **suffix  = Suffix string to add to copied filename (if any).
!!    **filter  = Copy only files with given PERL/JavaScript regex.
!!    **xfilter = Exclude files with the given PERL/JavaScript regex.
!!    **content = Include files with contents that match the given
!!                PERL/JavaScript regex.
!!    **sar     = sed-like search and replacement for filename (before
!!                prefix and suffix are added).  Multiple SAR entries
!!                can be given, separated by semicolons (;).
!!
**sound	**files	**bytes	**branch	**from	**to	**prefix	**suffix	**filter	**xfilter	**content	**sar
96637	69	996160	main	kern	mozart/piano/sonata	mozart-	.	.	.	.	.
*-	*-	*-	*-	*-	*	*-	*-	*-	*-	*-	*-
```

There are six reference records in info files:

| Reference key | Meaning |
| ---------------- | ------- |
| `source`             | URL for the source repository for the Humdrum files on GitHub. |
| `download-date`      | Date that the source repository was downloaded onto the local computer. |
| `last-commit`        | URL to the specific version of the repository that was downloaded. |
| `last-commit-date`   | Last commit date of the repository when it was downloaded. |
| `repository-license` | URL to License information for the repository (if any).
| `repository-readme`  | URL to Readme file for the repository (if any). |

Humdrum data describing the number of notes, number of copied files,
and the sizes of the file, will be added in the data section of the
info files below these reference records, as well as input parameters
for normalizing filenames and including/excluding files within the
copied directory files.  In the above example there is a single
directory of files, so there is only one line of data in the `.info`
file.  Other repositories may have multiple directories of data
that are copied into different local directories, and each line of
data in the info files will record information about each repository
subdirectory that was copied.

Note that the info file `sonatas/.info2` is the same as in the
entire default dataset download for `mozart/piano/sonatas/.info`.
In the main downloadable dataset, the three source repositories for
`make sonatas` are stored in separate directories
(`beethoven/piano/sonata`, `mozart/piano/sonata` and `haydn/piano/sonata`).
The `make sonatas` target demonstrates how to merge multiple
repositories, as well as making the filenames unique by prefixing
the source composer name to each filename (since filenames between
these three repositories are not unique).  See the
[LIST-sonatas.txt](https://github.com/humdrum-tools/humdrum-data/tree/main/.lists/LIST-sonatas.txt)
for an example of how to do this using the `**prefix` parameter.

On the GitHub webpage for the source repository webpage of files
listed in the info files, there should be a README file describing
the data set as well as any licensing information (Humdrum files
should also contain reference records for this information, in
particularly `YEC` (copyright notice) and `YEM` (license)).  If one
or both of these files are found, then their URLs will appear in
the `repository-license` and `repository-readme` reference records
of an info file.


### Adding more repositories/data subsets ###

Here is a table of repositories that are currently available within
the main download list:

| Notes | Files | Size | Repository owner | Repository name |
| ----- | ----- | ---- | ---------------- | --------------- |
| 327,266| 345| 3.2MB| [benory](https://github.com/benory) | [1520s-project-scores](https://github.com/benory/1520s-project-scores) |
| 440,222| 8,379| 5.4MB| [ccarh](https://github.com/ccarh) | [essen-folksong-collection](https://github.com/ccarh/essen-folksong-collection) |
| 145,084| 939| 12.9MB| [Computational-Cognitive-Musicology-Lab](https://github.com/Computational-Cognitive-Musicology-Lab) | [CoCoPops](https://github.com/Computational-Cognitive-Musicology-Lab/CoCoPops) |
| 0| 124| 1.8MB|  〃  | [MCFlow](https://github.com/Computational-Cognitive-Musicology-Lab/MCFlow) |
| 1,482| 1| 15.7KB| [craigsapp](https://github.com/craigsapp) | [Musikalisches-Wuerfelspiel](https://github.com/craigsapp/Musikalisches-Wuerfelspiel) |
| 84,624| 370| 931.9KB|  〃  | [bach-370-chorales](https://github.com/craigsapp/bach-370-chorales) |
| 259,692| 103| 2.5MB|  〃  | [beethoven-piano-sonatas](https://github.com/craigsapp/beethoven-piano-sonatas) |
| 234,252| 71| 3.2MB|  〃  | [beethoven-string-quartets](https://github.com/craigsapp/beethoven-string-quartets) |
| 54,917| 52| 529.2KB|  〃  | [chopin-mazurkas](https://github.com/craigsapp/chopin-mazurkas) |
| 18,705| 24| 162.4KB|  〃  | [chopin-preludes](https://github.com/craigsapp/chopin-preludes) |
| 8,552| 152| 150.9KB|  〃  | [creighton-nova-scotia](https://github.com/craigsapp/creighton-nova-scotia) |
| 16,091| 245| 329.3KB|  〃  | [densmore-teton-sioux](https://github.com/craigsapp/densmore-teton-sioux) |
| 62,741| 232| 538.2KB|  〃  | [erk-liederschatz](https://github.com/craigsapp/erk-liederschatz) |
| 35,349| 25| 376.4KB|  〃  | [haydn-piano-sonatas](https://github.com/craigsapp/haydn-piano-sonatas) |
| 3,320| 24| 53.4KB|  〃  | [hummel-preludes](https://github.com/craigsapp/hummel-preludes) |
| 68,545| 47| 558KB|  〃  | [joplin](https://github.com/craigsapp/joplin) |
| 96,637| 69| 972.8KB|  〃  | [mozart-piano-sonatas](https://github.com/craigsapp/mozart-piano-sonatas) |
| 68,489| 65| 707.4KB|  〃  | [scarlatti-keyboard-sonatas](https://github.com/craigsapp/scarlatti-keyboard-sonatas) |
| 92,207| 96| 825.9KB| [humdrum-tools](https://github.com/humdrum-tools) | [bach-wtc](https://github.com/humdrum-tools/bach-wtc) |
| 14,113| 33| 100.5KB|  〃  | [barbershop](https://github.com/humdrum-tools/barbershop) |
| 1,824| 38| 25.2KB|  〃  | [child-ballads](https://github.com/humdrum-tools/child-ballads) |
| 4,599| 38| 30.6KB|  〃  | [foster-songs](https://github.com/humdrum-tools/foster-songs) |
| 7,543| 29| 51.6KB|  〃  | [gershwin-songs](https://github.com/humdrum-tools/gershwin-songs) |
| 8,266| 15| 60.5KB|  〃  | [inventions](https://github.com/humdrum-tools/inventions) |
| 9,145| 60| 76.7KB|  〃  | [liber-usualis](https://github.com/humdrum-tools/liber-usualis) |
| 338,788| 1,995| 8.5MB|  〃  | [liber-usualis-ddmal](https://github.com/humdrum-tools/liber-usualis-ddmal) |
| 4,842| 35| 59.9KB|  〃  | [schubert-songs](https://github.com/humdrum-tools/schubert-songs) |
| 1,032| 86| 43.7KB|  〃  | [tonerow](https://github.com/humdrum-tools/tonerow) |
| 39,729| 105| 805.6KB| [jasonleeubc](https://github.com/jasonleeubc) | [Cantopop-corpus](https://github.com/jasonleeubc/Cantopop-corpus) |
| 19,851| 10| 190.3KB| [josquin-research-project](https://github.com/josquin-research-project) | [Agr](https://github.com/josquin-research-project/Agr) |
| 47,922| 86| 742.9KB|  〃  | [Ano](https://github.com/josquin-research-project/Ano) |
| 275| 1| 7KB|  〃  | [Bin](https://github.com/josquin-research-project/Bin) |
| 22,999| 6| 533.9KB|  〃  | [Bru](https://github.com/josquin-research-project/Bru) |
| 33,458| 68| 363.9KB|  〃  | [Bus](https://github.com/josquin-research-project/Bus) |
| 10,941| 27| 101KB|  〃  | [Com](https://github.com/josquin-research-project/Com) |
| 7,608| 5| 164.1KB|  〃  | [Das](https://github.com/josquin-research-project/Das) |
| 34,742| 37| 684.9KB|  〃  | [Duf](https://github.com/josquin-research-project/Duf) |
| 1,150| 2| 16.3KB|  〃  | [Fry](https://github.com/josquin-research-project/Fry) |
| 5,895| 5| 111.3KB|  〃  | [Fva](https://github.com/josquin-research-project/Fva) |
| 102,339| 110| 1.9MB|  〃  | [Gas](https://github.com/josquin-research-project/Gas) |
| 10,297| 5| 105.3KB|  〃  | [Isa](https://github.com/josquin-research-project/Isa) |
| 9,835| 22| 93.6KB|  〃  | [Jap](https://github.com/josquin-research-project/Jap) |
| 499,288| 475| 6MB|  〃  | [Jos](https://github.com/josquin-research-project/Jos) |
| 95,605| 122| 877.9KB|  〃  | [Mar](https://github.com/josquin-research-project/Mar) |
| 23,603| 15| 233.1KB|  〃  | [Obr](https://github.com/josquin-research-project/Obr) |
| 87,879| 98| 1.1MB|  〃  | [Oke](https://github.com/josquin-research-project/Oke) |
| 52,863| 44| 681.8KB|  〃  | [Ort](https://github.com/josquin-research-project/Ort) |
| 5,620| 5| 125.7KB|  〃  | [Pip](https://github.com/josquin-research-project/Pip) |
| 6,012| 4| 108.4KB|  〃  | [Reg](https://github.com/josquin-research-project/Reg) |
| 200,915| 172| 2MB|  〃  | [Rue](https://github.com/josquin-research-project/Rue) |
| 19,127| 19| 186.4KB|  〃  | [Tin](https://github.com/josquin-research-project/Tin) |
| 103,866| 21| 1MB| [musedata](https://github.com/musedata) | [humdrum-bach-brandenburg](https://github.com/musedata/humdrum-bach-brandenburg) |
| 146,369| 250| 1.3MB|  〃  | [humdrum-corelli](https://github.com/musedata/humdrum-corelli) |
| 338,549| 210| 2.8MB|  〃  | [humdrum-haydn-quartets](https://github.com/musedata/humdrum-haydn-quartets) |
| 157,809| 24| 2.2MB|  〃  | [humdrum-haydn-symphonies](https://github.com/musedata/humdrum-haydn-symphonies) |
| 151,828| 82| 1.3MB|  〃  | [humdrum-mozart-quartets](https://github.com/musedata/humdrum-mozart-quartets) |
| 1,115,811| 512| 14.6MB| [pl-wnifc](https://github.com/pl-wnifc) | [humdrum-chopin-first-editions](https://github.com/pl-wnifc/humdrum-chopin-first-editions) |
| 11,817,127| 7,821| 280.5MB|  〃  | [humdrum-polish-scores](https://github.com/pl-wnifc/humdrum-polish-scores) |
| 17,163| 84| 739.2KB| [polyrhythm-project](https://github.com/polyrhythm-project) | [rds-scores](https://github.com/polyrhythm-project/rds-scores) |
| 0| 30| 379.3KB| [SEILSdataset](https://github.com/SEILSdataset) | [SEILSdataset](https://github.com/SEILSdataset/SEILSdataset) |
| 65,787| 915| 987.8KB| [shanahdt](https://github.com/shanahdt) | [densmore](https://github.com/shanahdt/densmore) |
| 312,859| 495| 6.1MB| [TassoInMusicProject](https://github.com/TassoInMusicProject) | [tasso-scores](https://github.com/TassoInMusicProject/tasso-scores) |
| 13,018| 50| 268.7KB| [WolfgangDrescher](https://github.com/WolfgangDrescher) | [lassus-geistliche-psalmen](https://github.com/WolfgangDrescher/lassus-geistliche-psalmen) |
| 2,612| 50| 78.7KB|  〃  | [ulenberg-psalmen-davids](https://github.com/WolfgangDrescher/ulenberg-psalmen-davids) |


You can create your own list of repositories to download by creating
a file in the `.lists` directory, such as `.lists/LIST-mylist.txt`.
Then run `make mylist` to download your own curation of Humdrum
files downloaded from GitHub repositories.  Alternatively, edit
[.lists/LIST.txt](https://github.com/humdrum-tools/humdrum-data)
to arrange the downloaded repositories in a directory organization
of your choice (see the `**to` parameter below).

Configuration parameters for downloading GitHub repositories to the
local computer that the `LIST` files recognize:

Required parameters:

| Spine | Meaning |
| ----- | ------- |
|  `**ghname` | The name of the owner account where the repository to download resides. |
|  `**ghrepo` | The name of the repository to download from. |
|  `**from`   | The name of the subdirectory in the GitHub repository to copy from (this can be a null token if files are located in the root directory of the GitHub repository, but see also the `**filter` parameter to exclude non-Humdrum files.
|  `**to`     | The name of the local directory into which the Humdrum files should be copied (not allowed to be the base directory of this repository). |

Optional parameters:

| Spine | Meaning |
| ----- | ------- |
| `**prefix`  | A string that should be prefixed to each copied filename.  This is useful when merging multiple files into a single local directory where filenames within the multiple sources repositories that are do not have unique filename. |
| `**suffix`  | Similar to the prefix parameter, but added to the end of the copied file.  This is useful when the repository files do not have a file extension, and you want to append ".krn" to the end of each filename. |
| `**filter`  | Allow only files matching the given regular expression to be copied into the local directory from the downloaded repository. |
| `**xfilter` | Exclude files matching the given regular expression from being copied into the local directory (such as `\.pdf$` to exclude PDF files). |
| `**sar`     | A search-and-replace string to do more complicated renaming of copied files.  The form of the string should be like the `sed` command-line tool, such as `s/match/replace/g`. Multiple entries can be separated by a semi-colon (`;`). |

Parameters spines can be placed in any order and optional ones may
be omitted.  See example uses of these parameters in the sample
`LIST` files found in the
[.lists](https://github.com/humdrum-tools/humdrum-data/tree/main/.lists)
directory.

If you want a GitHub Humdrum digital score repository to be included
in the default list that is installed with the `make` command,
submit a request on the
[issues](https://github.com/humdrum-tools/humdrum-data/issues) page
of this repository, giving the necessary parameters described above.
The final copy to the local directory structure should only contain
valid Humdrum files containing only the characters `[A-Za-z0-9._-]`,
i.e. POSIX compliant names (use the prefix, suffix, filter, xfilter
and sar to adjust if necessary).  More complicated filtering and renaming
can be found in the [densmore](https://github.com/humdrum-tools/humdrum-data/tree/main/.lists/LIST-densmore.txt)
LIST file.


### Making your repositories more visible on GitHub ###

As a side note, it is useful to add the [topic
tags](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/classifying-your-repository-with-topics)
`humdrum` and `digital-scores` to your repository.  To add *topics* to your
repository, click on the gear icon next to the About section on the repository
home page (near the top left, but below the "Settings" gear icon):

<img width="646" alt="Screenshot 2024-02-28 at 10 18 57" src="https://github.com/humdrum-tools/humdrum-data/assets/3487289/a9b4070b-2a35-4d01-b959-9bd92e765cee">

In the above example, `humdrum` and `digital-scores` have been
added to the `Topics` field.

To search GitHub repositories by topic, do the following search (by clicking on
the magnifying glass at the top of a repository page):

<img width="595" alt="Screenshot 2024-02-28 at 10 22 06" src="https://github.com/humdrum-tools/humdrum-data/assets/3487289/e04c35c1-0621-4b3a-aedb-85426101b72f">

In other words, type `topic:humdrum topic:digital-scores` to search by
these two topics.  Here is the search results page for these two topics:

<img width="747" alt="Screenshot 2024-02-28 at 10 27 22" src="https://github.com/humdrum-tools/humdrum/assets/3487289/1a922178-8e93-4ff7-8ee1-6fafe01e1f12">

Here is a direct link to the search page for the `humdrum` + `digital-scores` topics:

https://github.com/search?q=topic%3Ahumdrum%20topic%3Adigital-scores&type=repositories

48 GitHub repositories are currently labeled with these topics.

If you do this, your repository may be encountered and added to the
main repository without prompting. :wink:


## Updating downloaded files ##

To update local files from current versions of the Github repositories,
the current method is to first remove the existing downloaded files
and then reinstall them:

```bash
make clean
make
```

Or run the `make` command selecting a particular data subsets in the
`.lists` directory LIST files that your previously downloaded, such as:

```bash
make clean
make sonatas
```

Note that running `make clean` will remove the data subsets as well
as the full set, but any of your local files that may be intermingled
with the repository files will be preserved by the updating process.
Running `make` or any subset LIST such as `make sonatas` will restore
updated versions of the files from GitHub.


### Archiving a current version of data ###

If you want to keep the current version of files in a local directory
(such as the same copy of the files used to generate results in a
paper), you can copy the directory before running `make clean`:

```bash
make joplin
cp -RL joplin joplin-20240229
```

The `joplin-20240229` directory will have resolved symbolic links
to the source files and will not be deleted when `make clean` is
run.

The `cp -RL` method is also useful if you want to copy of the Humdrum
files outside of the `humdrum-data` directory.  All downloaded files
are stored as relative links to the repository directories in
`.source`, so otherwise moving the local directories outside of the
`humdrum-data` directory using `cp -r` of `mv`, or even usually
moving them within the `humdrum-data` directory (unless they are
at the same directory depth as the copied source) will break these
links.  Moving them within the repository should best be done by
editing the LIST files used to download data, to create a rearrangement
of the local file structure to your liking (after running `make clean`
to clean up the old local directory structure).


## Data errors ##

When there are data errors in downloaded files, contact the repository
owner to get them to fix the problem.  This is typically done by
going to the issues page for the source repository.  Some repositories
also include scans of the source editions, such as the
[mozart-piano-sonatas](https://github.com/craigsapp/mozart-piano-sonatas/tree/main/reference-edition)
repository, which can be used to verify the digital score transcriptions.

Files should not produce errors (and preferably not warnings) when
checked with the [humdrum](https://www.humdrum.org/tool/humdrum) tools,
that is also up to the maintainers of the source repositories.  The
basic Humdrum structure should be correct for the full data set
(any invalid files are exclude with `*xfilter`).  Commented out
repository directories in `.lists/LIST*.txt` files typically indicates
that there are problems in the Humdrum structure if one or more
file in the source directory, so that directory or specific files
are excluded from the downloads.


## Note counts ##

The command `make nc` or `make note-counts` will produce a list of
note, file, and file size counts for downloaded repositories, both
the complete list and any subsets that have been downloaded.
Duplicate files will not be double counted in the totals at the end
of the results.

<details>
<summary> Click to view note counts for the full repository installation. </summary>

```
**notes	**files	**size	**directory
103866	21	1MB	bach/brandenburg
84624	370	931.9KB	bach/chorales-370
8266	15	60.5KB	bach/inventions
92207	96	825.9KB	bach/wtc
259692	103	2.5MB	beethoven/piano/sonata
234252	71	3.2MB	beethoven/quartet
39597	8	487KB	chopin/ballade
82354	42	1MB	chopin/etude
1115811	512	14.6MB	chopin/first-editions
54917	52	529.2KB	chopin/mazurkas
105488	23	1.2MB	chopin/polonaise
18705	24	162.4KB	chopin/preludes
44541	8	604.8KB	chopin/scherzo
55263	27	598.9KB	chopin/waltz
146369	250	1.3MB	corelli
2254	2	41.9KB	early-music/agostini
19851	10	190.3KB	early-music/agricola
193	1	5KB	early-music/albano
493	1	9.8KB	early-music/alberti
47922	86	742.9KB	early-music/anonymous
6314	7	60.9KB	early-music/anonymous-1520s
567	1	11.1KB	early-music/asola
1007	1	17.2KB	early-music/bacchini
3613	9	77.2KB	early-music/baccusi
15732	17	281.2KB	early-music/balsamino
391	1	7.9KB	early-music/barbarino
561	1	4.6KB	early-music/barra
7030	7	71.4KB	early-music/bauldeweyn
446	1	8.8KB	early-music/bellanda
2329	5	45.2KB	early-music/bellasio
735	1	13.5KB	early-music/bellaver
2105	3	41KB	early-music/belli
386	2	13.1KB	early-music/benedetti
646	2	15.5KB	early-music/billi
275	1	7KB	early-music/binchois
1004	1	8.4KB	early-music/bisegueria
168	1	6.1KB	early-music/bonelli
1294	2	27.8KB	early-music/bonini
474	1	9.6KB	early-music/borelli
43	1	3.9KB	early-music/borsaro
3280	5	61.8KB	early-music/boschetti
2459	8	56.8KB	early-music/bozi
22999	6	533.9KB	early-music/brumel
33458	68	363.9KB	early-music/busnoys
610	1	11.9KB	early-music/camarella
855	1	14.8KB	early-music/cancineo
1165	1	18.3KB	early-music/cantino
1537	1	24.4KB	early-music/capilupi
220	1	7.2KB	early-music/caprioli
538	1	11.3KB	early-music/castro
901	1	16.5KB	early-music/cavatoni
135	1	5.9KB	early-music/cerbello
1126	1	20.8KB	early-music/champion
14794	24	303.5KB	early-music/cifra
1884	2	34.3KB	early-music/cirullo
457	2	11.6KB	early-music/civita
484	1	10.4KB	early-music/clemsee
551	1	10.6KB	early-music/coma
10941	27	101KB	early-music/compere
4481	4	38.5KB	early-music/conseil
1200	1	23KB	early-music/corfini
2269	4	45.5KB	early-music/cortellini
618	1	10.8KB	early-music/dallacasa
1224	1	19.6KB	early-music/dallagostena
7608	5	164.1KB	early-music/daser
349	1	7.5KB	early-music/dellarota
4209	7	86.3KB	early-music/dentice
312	1	7.4KB	early-music/dering
285	3	12.2KB	early-music/dicostanzo
8147	17	179.8KB	early-music/dindia
1057	1	19.1KB	early-music/dragoni
991	1	19.5KB	early-music/duc
9192	12	162.9KB	early-music/dueto
34742	37	684.9KB	early-music/dufay
1107	1	20KB	early-music/effrem
547	1	5.3KB	early-music/erasmus
15726	19	334.6KB	early-music/eredi
692	1	12.5KB	early-music/eremita
551	1	5.3KB	early-music/fage
2081	2	37.6KB	early-music/feliciani
6400	8	120.9KB	early-music/felis
880	2	18KB	early-music/felix
885	1	15.5KB	early-music/ferrabosco
666	1	14.9KB	early-music/ferro
25926	23	267.1KB	early-music/festa-costanzo
2080	4	18KB	early-music/festa-sebastiano
6571	6	117.7KB	early-music/fevin-antoine
261	1	5.6KB	early-music/fonghetti
639	1	14.1KB	early-music/fontanelli
204	1	4.9KB	early-music/fornaci
1150	2	16.3KB	early-music/frye
2772	4	54.7KB	early-music/gabella
1394	1	25.7KB	early-music/gallo
289	1	6.9KB	early-music/garzi
5049	3	54KB	early-music/gascongne
102339	110	1.9MB	early-music/gaspar
3601	4	64.7KB	early-music/gastoldi
667	1	12.3KB	early-music/genvino
7167	9	132.4KB	early-music/gesualdo
1334	2	24.1KB	early-music/gherardini
3645	5	81.1KB	early-music/ghizzolo
4932	6	90.5KB	early-music/giovannelli
991	1	18.6KB	early-music/giramo
15531	9	139.5KB	early-music/gombert
1646	4	34.3KB	early-music/guami
261	1	5.9KB	early-music/guelfi
4426	3	72.4KB	early-music/hassler
886	1	15.7KB	early-music/hodemont
9903	21	216.2KB	early-music/ilverso
754	2	16.8KB	early-music/ingegneri
10297	5	105.3KB	early-music/isaac
2019	2	38.1KB	early-music/isnardi
17296	16	160.9KB	early-music/jachetofmantua
3930	7	31KB	early-music/jacotin
12814	9	108.9KB	early-music/janmaistre
9835	22	93.6KB	early-music/japart
499288	475	6MB	early-music/josquin
834	7	41.2KB	early-music/lambardi
377	1	7.4KB	early-music/landi
200915	172	2MB	early-music/larue
1582	1	13.6KB	early-music/lasantier
18962	16	159.7KB	early-music/lheritier
4167	3	33.5KB	early-music/lupi
6207	7	54.2KB	early-music/lupus
3459	5	71.7KB	early-music/luzzaschi
1946	4	38.3KB	early-music/macigni
1593	5	37.2KB	early-music/macque
1027	2	18.7KB	early-music/malpigli
694	1	16KB	early-music/malvezzi
833	1	14.7KB	early-music/mancini
130107	188	3.3MB	early-music/marenzio
164	1	5.6KB	early-music/marini
8230	19	189KB	early-music/marotta
95605	122	877.9KB	early-music/martini
537	1	10.6KB	early-music/masnelli
4418	7	95.2KB	early-music/massaino
7597	19	167.1KB	early-music/mazza
966	2	25KB	early-music/mazzocchi
806	1	14.8KB	early-music/mel
3840	4	78.5KB	early-music/meldert
210	1	5.5KB	early-music/melli
1755	3	38.1KB	early-music/merulo
599	1	11.7KB	early-music/milleville
1674	4	38.2KB	early-music/molinaro
14278	26	315.5KB	early-music/monte
1580	3	33.7KB	early-music/montella
4019	6	82.4KB	early-music/monteverdi
864	1	16.4KB	early-music/montverdi
8338	8	74.1KB	early-music/moulu
19751	21	189.3KB	early-music/mouton
1002	1	17.5KB	early-music/naldi
682	4	19.9KB	early-music/nanino
232	1	5.7KB	early-music/nanterni
425	1	8.3KB	early-music/narducci
686	2	16.4KB	early-music/negri
1889	3	36KB	early-music/nenna
830	1	13.7KB	early-music/nielsen
23603	15	233.1KB	early-music/obrecht
87879	98	1.1MB	early-music/okeghem
52863	44	681.8KB	early-music/orto
5430	6	100.1KB	early-music/pallavicino
626	1	12.6KB	early-music/persone
1137	1	20.6KB	early-music/philips
5620	5	125.7KB	early-music/pipelare
1061	2	21.4KB	early-music/pordenon
2186	2	41.5KB	early-music/porta
630	1	10.1KB	early-music/porto
1486	2	28.3KB	early-music/pozzo
644	1	11.4KB	early-music/preti
1745	2	33.5KB	early-music/priuli
1292	1	21.8KB	early-music/raval
1091	1	17.8KB	early-music/recalchi
6012	4	108.4KB	early-music/regis
766	2	7.4KB	early-music/renaldo
1349	3	31KB	early-music/ricci
30933	28	312.5KB	early-music/richafort
228	1	7.4KB	early-music/roccia
576	1	10.3KB	early-music/roinci
183	1	4.6KB	early-music/sabbatini
516	1	10.5KB	early-music/salzilli
549	1	10.3KB	early-music/santini
171	1	5.6KB	early-music/saracini
905	1	17.3KB	early-music/scozzese
23809	35	400.3KB	early-music/senfl
107	1	6.5KB	early-music/serafico
7902	12	75.2KB	early-music/sermisy
10187	10	92.8KB	early-music/silva
518	1	11KB	early-music/spano
120	1	6KB	early-music/stefani
1534	3	29.3KB	early-music/stivori
254	1	6.9KB	early-music/striggio
1696	2	16KB	early-music/therache
19127	19	186.4KB	early-music/tinctoris
80	1	3.8KB	early-music/torelli
441	1	9.6KB	early-music/torscianello
1256	2	22.6KB	early-music/tosone
1893	3	35.1KB	early-music/tresti
274	1	7.2KB	early-music/vecchi
1063	2	20.8KB	early-music/vecoli
1401	1	23.9KB	early-music/veggio
31127	42	264.9KB	early-music/verdelot
2133	1	34.8KB	early-music/verdonck
516	1	9.2KB	early-music/verso
2065	2	36.2KB	early-music/vignali
452	1	9.1KB	early-music/villani
603	1	12KB	early-music/vinci
4870	3	43.4KB	early-music/vinders
6109	7	112.4KB	early-music/virchi
749	1	14.8KB	early-music/vittori
7851	8	142.5KB	early-music/wert
52053	60	521.2KB	early-music/willaert
2776	3	55.2KB	early-music/zanotti
3128	7	58KB	early-music/zenaro
35349	25	376.4KB	haydn/piano
338549	210	2.8MB	haydn/quartet
157809	24	2.2MB	haydn/symphony
3320	24	53.4KB	hummel/preludes
68545	47	558KB	joplin
1482	1	15.7KB	mozart/dice
96637	69	972.8KB	mozart/piano/sonata
151828	82	1.3MB	mozart/quartet
711	2	9.6KB	polish/a-s
1692	2	65.6KB	polish/abersbach-jan-jiri
1911	2	21.6KB	polish/andrychowicz-j
7669	6	426KB	polish/anerio-giovanni-francesco
1178431	2033	27.4MB	polish/anonim
12766	23	550.9KB	polish/asola-giovanni-matteo
1671	1	27.9KB	polish/astorga-emanuele-d
12296	6	191.9KB	polish/bach-johann-christian
8471	7	128.6KB	polish/badarzewska-tekla
2664	6	37.7KB	polish/barcicki-jan
18876	7	330.5KB	polish/bauer
1494	1	15.1KB	polish/bauer-joseph-anton
7191	5	70.7KB	polish/bauerfeind-wladyslaw
1729	8	68.7KB	polish/bazylik-cyprian
2471	1	23.3KB	polish/beethoven-ludwig-van
3706	4	134KB	polish/bellinzani-paolo-benedetto
1712	1	31.4KB	polish/bencini
2273	1	29.7KB	polish/beyer-ferdinand
1139	2	40.4KB	polish/biandra-giovanni-pietro
9215	6	190.7KB	polish/binder-christlieb-siegmund
6290	6	79KB	polish/boczkowski-jerzy
7182	3	170.5KB	polish/boczkowski-kazimierz
13598	5	357.4KB	polish/bogoimski-tadeusz
39007	7	900.9KB	polish/bogunski-baltazar
6520	4	138.6KB	polish/bohdanowicz-bazyli
356	1	4.3KB	polish/boieldieu-adrien
60931	21	1.7MB	polish/bolehovsky-josef
7225	9	232.9KB	polish/borek-krzysztof
968	1	39.8KB	polish/borimius-jan
249	1	7.9KB	polish/bortnjanskij-dmitrij-stepanovic
4939	1	61.5KB	polish/braun-jan
13155	10	263.7KB	polish/brentner-johann-joseph-ignaz
3284	4	61.5KB	polish/brioschi-antonio
20348	5	470KB	polish/brixi-frantisek-xaver
9610	2	235.8KB	polish/brixi-viktorin
37388	26	682.7KB	polish/brykner-jerzy
1681	3	27.6KB	polish/brzezinska-filipina
2228	5	28.2KB	polish/brzowska-jadwiga
43126	24	792.5KB	polish/buchner-philipp-friedrich
180	1	4.3KB	polish/buhler-franz
15384	13	355.9KB	polish/bulakowski-stefan
7558	10	240.3KB	polish/cadeac-pierre
272	1	5.7KB	polish/caderski-piotr
1095	1	19.2KB	polish/caldara-antonio
101	1	3.3KB	polish/cardilli-jacopo-antonio
16077	17	334.6KB	polish/casali-giovanni-battista
17570	18	498KB	polish/certon-pierre
27178	4	1012.9KB	polish/cherubini-luigi
1217	2	22.6KB	polish/chodkiewicz-zofia
75968	6	5.1MB	polish/chopin-fryderyk
2462	6	35.5KB	polish/chwalibog-izydor-konstanty
7730	9	247.9KB	polish/constanzi
4346	2	76.1KB	polish/conti
10843	18	302.1KB	polish/costanzi-giovanni-battista
3271	1	36.9KB	polish/cramer-johann-baptist
410	4	17.9KB	polish/croce-giovanni
5132	11	83.9KB	polish/cwiklicz-boleslaw-jan
6605	10	162.4KB	polish/cybulski-izydor-jozef
1873	1	45.2KB	polish/czajkowski-konstanty
557	1	13.5KB	polish/czerny-carl
55590	12	1.9MB	polish/damse-jozef
2408	2	28.2KB	polish/danielski-florian
18580	9	365.5KB	polish/danik-jan-ignac
20208	9	505KB	polish/danka
417972	149	11.3MB	polish/dankowski-adalbert
7032	2	128.1KB	polish/daubeck-jozef
2630	1	37.9KB	polish/de-majo-gian-francesco
181	1	2.4KB	polish/dembowska-konstancja
3461	2	28.2KB	polish/dietrich-moritz
7902	4	138.9KB	polish/dittersdorf-carl-ditters-von
218271	56	5MB	polish/dobrzynski-ignacy-feliks
545663	142	16.7MB	polish/elsner-jozef
78177	29	2MB	polish/engel-jan
129	1	5.9KB	polish/ett-caspar
18728	4	422.1KB	polish/fertner-karol
305	2	25.2KB	polish/fierszewicz-daniel
2221	1	42.4KB	polish/figulenti
144	1	2.5KB	polish/filipowicz-p
3987	4	75.8KB	polish/fils-anton
1690	1	20.7KB	polish/fischietti-giovanni
7368	14	168.1KB	polish/fitelberg-grzegorz
82	1	3.7KB	polish/flasza-tomasz
36561	9	803.2KB	polish/fleming-jan
496	4	18.5KB	polish/flori-georg
133532	44	4.4MB	polish/forster-kaspar
281	1	9.2KB	polish/fuchs
1743	6	56.9KB	polish/fuhrer-robert
856	1	13.9KB	polish/g-b-b
619	4	18.8KB	polish/gabrieli-andrea
237	2	6.9KB	polish/gabussi-giulio-cesare
6723	10	100.2KB	polish/gall-jan-karol
418	1	16.3KB	polish/gallus-iacobus
532	1	15.2KB	polish/gawara-walentyn
108	1	4.1KB	polish/geiger-konstanze
700	1	9.5KB	polish/geistlener-barbara
2803	3	58.9KB	polish/gimeshoffer
2174	3	33.2KB	polish/gizycka-zamoyska-ludmila
77421	15	2MB	polish/goetz-gieczynski-cyryl
9547	6	173.1KB	polish/golabek-jakub
8618	10	108.8KB	polish/gold-artur
27682	151	713.7KB	polish/gomolka-mikolaj
41191	65	1.6MB	polish/gorczycki-grzegorz-gerwazy
1795	2	35.3KB	polish/gostowski
65211	33	1.3MB	polish/gotschalk-filip
6891	8	204.1KB	polish/goudimel-claude
5424	1	87.6KB	polish/grabowski-stanislaw
22608	9	376.9KB	polish/graun-carl-heinrich
2373	1	25KB	polish/grem-tomasz
3869	15	66.3KB	polish/grim-jozef
1088	1	15.2KB	polish/grose-michael-ehregott
1793	2	18.3KB	polish/grossmann-ludwik
1096	1	19.9KB	polish/gruberski-eugenjusz
605	4	21.9KB	polish/guami-gioseffo
5677	3	88.7KB	polish/guglielmi-pietro-alessandro
4236	3	88KB	polish/habermann-jan-piotr
298	1	7.9KB	polish/handel-georg-friedrich
1718	6	26.6KB	polish/hanel
8186	20	201.8KB	polish/haser-august-ferdinand
5935	8	159KB	polish/haslinger
45605	15	786.4KB	polish/hasse-johann-adolf
20476	23	392.9KB	polish/haydn-joseph
3194	10	40.4KB	polish/hepner
2756	3	85.2KB	polish/herissant-jehan
7222	3	122.9KB	polish/hermanowski-a
98664	71	1.7MB	polish/hertz-michal
576	2	28.6KB	polish/hey-stawicki-michal
294	2	10.2KB	polish/hlonowski-j
753	2	8.5KB	polish/hoffmeister-franz-anton
27475	9	719.3KB	polish/hofmann-leopold
23405	40	382KB	polish/holland-jan-dawid
4773	2	132.4KB	polish/holzbauer-ignaz
192	1	5.7KB	polish/ingegneri-marc-antonio
530	1	12KB	polish/isaac-heinrich
355	1	6.2KB	polish/isouard-nicolas
5718	5	201.3KB	polish/jachet-de-mantua
3400	2	75KB	polish/jacotin
3333	4	41.8KB	polish/janicki-mikolaj
36070	17	693.5KB	polish/janiewicz-feliks
3154	1	30.2KB	polish/janisch
5008	1	198.2KB	polish/jansa-leopold
1664	2	19KB	polish/jarecki-henryk
5769	8	66.5KB	polish/jarecki-jozef
37871	28	722.2KB	polish/jarzebski-adam
2971	5	65.5KB	polish/jeric
30669	26	417.1KB	polish/joteyko-tadeusz
35669	15	959.7KB	polish/just-franciszek-kasper
9035	11	105.4KB	polish/kagan-jakub
34169	8	965.9KB	polish/kalous-vaclav
2921	5	29.6KB	polish/kamienski-antoni
4934	2	109KB	polish/kaminski-f
3161	1	32.5KB	polish/kaminski-p
6083	4	59.1KB	polish/karasinski-adam-jozef
70665	15	2.6MB	polish/karlowicz-mieczyslaw
4476	6	111.6KB	polish/kaspar
7978	12	226.5KB	polish/kasprzykowski-ignacy
16723	5	195.2KB	polish/katski-antoni
77047	20	1021.8KB	polish/katski-apolinary
1630	1	25.9KB	polish/kazynski-wiktor
203	1	3.2KB	polish/kedzierski-x-a
2292	1	35.6KB	polish/kellerer-christophorus
550	1	12.4KB	polish/kietlinski-albert
22059	9	569KB	polish/klakowski
4490	3	55.5KB	polish/klemczynski-julian
19735	14	420.9KB	polish/kobierkowicz-jozef
217	1	4.8KB	polish/komorowski-ignacy-marceli
10521	7	187.8KB	polish/konigsperger-marianus
78815	24	2.3MB	polish/koperski-maksymilian
2706	4	31.2KB	polish/kosciuszko-tadeusz
14258	6	266.1KB	polish/kotowicz
15469	18	362.6KB	polish/kottritsch-franciszek
83780	25	3MB	polish/kozlowski-jozef
1032	1	9.1KB	polish/kranowski-igo
1940	1	29.2KB	polish/krassowski
1251	1	11.4KB	polish/kraszewski-jozef-ignacy
1951	1	38.6KB	polish/kraus-jozef
11326	8	288.7KB	polish/kraus-lambert
2010	4	39.8KB	polish/kreith
771	2	31.2KB	polish/krener-jan
509	1	13.9KB	polish/kreutzer
63948	41	1.4MB	polish/krogulski-jozef-wladyslaw
1421	1	14KB	polish/krogulski-wladyslaw
1181	3	14.3KB	polish/krolikiewicz-napoleon
4326	9	68.8KB	polish/krupinski-wiktor
1217	1	10.4KB	polish/krysta-jozef
5083	1	91.8KB	polish/krzewdzienski-pawel
1960	1	33KB	polish/krzykowski-f
53437	21	1.2MB	polish/kuci-mateusz
72624	39	1.4MB	polish/kurpinski-karol-kazimierz
2388	1	32.6KB	polish/kuttricz-lania
2218	3	44.3KB	polish/lachner-ignaz
2371	2	42KB	polish/lada-kazimierz
1644	1	30.4KB	polish/lampugnani-giovanni-battista
230	2	11.2KB	polish/lasso-ferdinand-di
6598	33	217.5KB	polish/lasso-orlando-di
606	4	20.2KB	polish/lasso-rudolph-di
1643	1	25.1KB	polish/laube-antonin
2042	2	27.1KB	polish/lawina-swietochowski-jerzy
126867	51	2.7MB	polish/lechleitner-ferdinand-simon
43113	21	1.2MB	polish/lessel-franciszek
6103	7	158.3KB	polish/leszczynski-wladyslaw
1663	3	20.2KB	polish/lewandowski-leopold-leon
1127	1	23.1KB	polish/lheritier-jean
786	1	8.6KB	polish/lidauer-wladyslaw
24075	36	684.1KB	polish/lilius-franciszek
626	1	6.7KB	polish/linowski-jozef
4194	3	83.2KB	polish/lipski-stanislaw
1058	4	25.2KB	polish/lobmann-j
9090	50	178KB	polish/lodwigowski-edward-stefan
2391	1	56.3KB	polish/loos-karel
180	1	7.7KB	polish/lubelczyk-jakub
614	1	17.5KB	polish/lubomirska-ludwika
6043	4	72.7KB	polish/lubomirski-kazimierz
6493	1	69.4KB	polish/lubowski-jozef
4773	3	97.4KB	polish/lukaszewicz-maciej
251380	92	5.1MB	polish/luna-georgius
4215	8	169.5KB	polish/luython-carl
2322	4	53.8KB	polish/m-m
115600	46	2.8MB	polish/maader-ludwik
286	3	24.3KB	polish/maintzer-franz
203	1	2.5KB	polish/majewska-j
6821	3	134.1KB	polish/maldere-pierre-van
4870	4	98.9KB	polish/malik-jan
111249	170	3MB	polish/marenzio-luca
14363	6	274.3KB	polish/marescalchi-luigi
651	5	25.6KB	polish/massaino-tiburzio
3747	4	57.6KB	polish/maszynski-piotr
708	1	12.8KB	polish/mathieu
6439	3	113.5KB	polish/matuszkiewicz-franciszek
6004	7	148.7KB	polish/maxylewicz-wincenty
235	1	3.5KB	polish/mehul-etienne-nicolas
405	3	11.9KB	polish/mel-rinaldo-del
645	1	8.4KB	polish/merlini
15367	4	461.5KB	polish/mielczewski-marcin
24054	16	423.7KB	polish/mikuli-karol
2315	1	35.4KB	polish/mine-jacques-claude-adolphe
204	1	18.3KB	polish/miskiewicz-maciej-arnulf
28399	11	394.5KB	polish/mlynarski-emil
5788	1	67.8KB	polish/modzelewski-michal
1917	1	32.3KB	polish/monczynski-roman
581	1	7.4KB	polish/monfreulle-roza-eleonora
807010	413	17.4MB	polish/moniuszko-stanislaw
501	4	20.3KB	polish/monte-philippe-de
6189	5	222.2KB	polish/morales-cristobal-de
3226	2	87.9KB	polish/morawski-jozef-bernard
5061	5	153.5KB	polish/moulu-pierre
2030	1	49KB	polish/mouton-jean
14225	12	238.4KB	polish/mrozowski-tadeusz
799	1	10.5KB	polish/mucman-boleslaw
463	1	14.3KB	polish/musialowski-jan
2347	3	36.9KB	polish/myslivecek-josef
16535	5	323.3KB	polish/namieyski-jan
4753	6	57.2KB	polish/namyslowski-karol
8576	4	173.2KB	polish/naumann-johann-gottlieb
7839	4	165.3KB	polish/neumann
19956	11	448.2KB	polish/neumann-wawrzyniec
557	1	5.3KB	polish/nidecki-tomasz
860	1	13.4KB	polish/niewiadomski-stanislaw
205821	108	4.4MB	polish/noskowski-zygmunt
61065	26	1.9MB	polish/nowakiewicz-kazimierz
15844	19	218.6KB	polish/nowakowski-jozef
4750	2	62.4KB	polish/nowicki-ludwik
11367	16	151.1KB	polish/oginski-michal-kleofas
3407	2	31.2KB	polish/orda-napoleon
833	1	29.4KB	polish/orgas-annibale
1037	1	11.3KB	polish/orlowski-antoni
30828	16	615.1KB	polish/orlowski-michal
4070	4	56KB	polish/osmanski-wojciech
1928	3	20.5KB	polish/ostrowski-jan
9924	9	283.8KB	polish/pacelli-asprilio
424	1	7.1KB	polish/pachulski-henryk
317461	139	12.5MB	polish/paderewski-ignacy-jan
20673	46	603.3KB	polish/palestrina-giovanni-pierluigi-da
1030	3	32.6KB	polish/paszkiewicz-andrzej
11803	7	249.2KB	polish/pausch-eugen
57851	56	1.9MB	polish/pekiel-bartlomiej
15263	12	307.7KB	polish/pergolesi-giovanni-battista
3476	1	38KB	polish/pichl-vaclav
4575	5	93.6KB	polish/pichler-johann-melchior
4738	4	58.5KB	polish/piotrowski-aleksander
2657	1	51.8KB	polish/piotrowski-franciszek
1212	2	29.5KB	polish/pitoni-giuseppe-ottavio
23916	14	412.4KB	polish/pleyel-ignace
2500	1	44.8KB	polish/pokorny-franz-xaver
150	2	5.5KB	polish/porta-costanzo
2006	1	23.9KB	polish/potocka-emilia
449	3	16.7KB	polish/pottier-matthias
181	1	2.5KB	polish/puchalski
10730	15	172.4KB	polish/pugnani-gaetano
42026	18	1.1MB	polish/pych-leopold
1263	3	19.2KB	polish/radziwill-antoni-henryk
378762	129	11.2MB	polish/raszek-waclaw
12742	6	239.2KB	polish/rathgeber-johann-valentin
230	1	10.5KB	polish/ratti-lorenzo
6479	7	115.2KB	polish/renner-josef
3798	1	72.5KB	polish/rhein-carolo-de
3221	3	57.4KB	polish/riccieri-giovanni-antonio
4959	17	112.7KB	polish/richling
38403	8	1.1MB	polish/righini-vincenzo
153159	57	3.1MB	polish/rodowski-aleksander
1458	2	16.5KB	polish/rossini-gioachino
1053	1	13.4KB	polish/rossochalski
195	1	6.7KB	polish/rothe
10506	12	344.2KB	polish/rozycki-jacek
45269	26	683.1KB	polish/rozycki-ludomir
234	1	6.2KB	polish/rudkowski-mateusz
6744	5	224.4KB	polish/ruffo-vincenzo
1925	1	65.6KB	polish/ruggiero
12996	5	211.6KB	polish/ruth-christian-joseph
277	1	6.8KB	polish/rychling-wincenty-waclaw
51945	35	1MB	polish/rygall-ignacy
23681	12	442.3KB	polish/rzepko-adolf
2889	5	74.4KB	polish/sabino-ippolito
7716	3	129KB	polish/sacchini-antonio
145	1	4.3KB	polish/salepico-josquino
5337	2	177.1KB	polish/salieri-antonio
2754	4	85.2KB	polish/samin-vulfran
14712	9	355.9KB	polish/scacchi-marco
533	1	7KB	polish/schall-claus-nielsen
1425	1	16.2KB	polish/schiedermayr-johann-baptist
1103	1	22.5KB	polish/scholenberger
1073	2	26.9KB	polish/schopf
145	1	4.5KB	polish/schwertzer-j
160273	51	4.3MB	polish/scigalski-franciszek
2849	5	103.4KB	polish/sebastian-z-felsztyna
666	1	17.9KB	polish/senfl-ludwig
3817	1	86.6KB	polish/sieprawski-pawel
750	1	7.5KB	polish/sieroslawski-jozef
2332	13	72.4KB	polish/singenberger-johann-baptist
24600	24	648.3KB	polish/siwinski-andrzej
29861	11	974.8KB	polish/sloczynski-wojciech
113	1	5.8KB	polish/smacierzynski
247998	74	2.5MB	polish/smietanski-emil-wladyslaw
604	2	6.6KB	polish/sokol-andrzej
1428	1	12.8KB	polish/sonnenfeld-adolf-gustaw
269683	97	6.4MB	polish/sowinski-wojciech
47459	63	1.1MB	polish/stabile-annibale
1141	1	26.9KB	polish/stachowicz-damian
35202	8	674.9KB	polish/staromiejski-j
6249	1	163.3KB	polish/statkowski-tadeusz
5890	5	99.5KB	polish/stefani-jan
862654	459	17.4MB	polish/stefani-jozef
858	2	11.6KB	polish/stefani-p
64700	33	1.1MB	polish/stojowski-zygmunt
4878	4	97.2KB	polish/stolle
842	1	12.5KB	polish/stolpe-alojzy
3295	7	96.9KB	polish/studzinski-karol
593	1	12.7KB	polish/studzinski-kazimierz
16851	10	345.5KB	polish/studzinski-piotr
10576	8	226.6KB	polish/studzinski-wincenty
10137	9	309.9KB	polish/szadek-tomasz
2363	1	58.3KB	polish/szarzynski-stanislaw-sylwester
43259	22	888.2KB	polish/szczurowski-jacek
10454	19	256.5KB	polish/szlagorski-walenty
52132	40	714.6KB	polish/szymanowska-maria
41212	30	704.5KB	polish/szymanowski-karol
1282	4	22.2KB	polish/tarnowski-adam
1244	1	16.7KB	polish/teichmann-antoni
2558	2	63.1KB	polish/terzago-bernardino
16187	6	323.3KB	polish/toeschi-carl-joseph
122	1	4.8KB	polish/troschel
44550	34	658.2KB	polish/troschel-wilhelm
1329	1	121.4KB	polish/turczynski-paschalis
219	1	3.9KB	polish/turowicz-ksawery
3244	6	33.6KB	polish/tymolski-fabian
926	1	9.1KB	polish/unicki
560	2	7.7KB	polish/vanhal-johann-baptist
1760	1	27.3KB	polish/vinci-leonardo
914	1	27.5KB	polish/virchi-paolo
135672	21	3.4MB	polish/vogel
439348	126	12.5MB	polish/volckmer-augustin
1042	2	25.2KB	polish/waclaw-z-szamotul
19061	106	371.5KB	polish/walczynski-franciszek
17204	11	377.5KB	polish/wanski-jan
3657	4	72.3KB	polish/went-johann-nepomuk
108604	38	2.2MB	polish/wieniawski-henryk
22628	7	406.4KB	polish/wieniawski-jozef
1793	5	52.9KB	polish/wiltberger-august
751	2	9.2KB	polish/winter-peter-von
635	2	19.4KB	polish/witt-franz-xaver
2491	1	25.7KB	polish/wolff-edward
5167	1	85.6KB	polish/woloszko-andrzej
1668	5	22.2KB	polish/worobecki-jozef
4431	1	143.4KB	polish/wronowicz-maciej-h
9205	4	73.6KB	polish/wronski-adam
13713	6	355.5KB	polish/wygrzywalski-jozef
31540	30	318.3KB	polish/wysocki-kasper-napoleon
7307	4	183.1KB	polish/zajaczkowski-roman
346	1	34KB	polish/zandtfelder-nicolaus-joseph-ignatius
3035	6	61.1KB	polish/zangl-johann-baptist
67882	19	1.1MB	polish/zarebski-juliusz
2013	1	25.6KB	polish/zarzycki-aleksander
151019	71	3.4MB	polish/zebrowski-marcin-jozef
100967	32	3.1MB	polish/zeidler-jozef
305081	155	5.6MB	polish/zelenski-wladyslaw
4896	3	64KB	polish/ziegler
5912	10	139.8KB	polish/zieleniewicz-mathias
71795	108	841.4KB	polish/zielenski-mikolaj
4147	12	74.8KB	polish/zientarski-romuald-teodor
500	1	13.8KB	polish/zlotaszewski-jozef
17163	84	739.2KB	polyrhythm/rds
68489	65	707.4KB	scarlatti/sonata
338788	1995	8.5MB	songs/chant/liber-usualis-ddmal
9145	60	76.7KB	songs/chant/liber-usualis-selections
1824	38	25.2KB	songs/child-ballads
10784	82	100.5KB	songs/densmore/acoma
3665	53	40.6KB	songs/densmore/maidu
3873	73	100.7KB	songs/densmore/mandan
7470	140	93.1KB	songs/densmore/menomiee
6184	110	85KB	songs/densmore/northute
4844	86	228.2KB	songs/densmore/pawnee
13718	243	167.7KB	songs/densmore/seminole
16091	245	329.3KB	songs/densmore/sioux
15249	128	171.8KB	songs/densmore/yuman
136	1	1.2KB	songs/folksongs/essen/africa
266	4	2.9KB	songs/folksongs/essen/america/mexico
51	2	1.3KB	songs/folksongs/essen/america/misc
333	7	5KB	songs/folksongs/essen/america/usa
90225	1223	969.4KB	songs/folksongs/essen/asia/china/han
14074	206	202KB	songs/folksongs/essen/asia/china/natmin
37878	802	487KB	songs/folksongs/essen/asia/china/shanxi
1183	10	11.4KB	songs/folksongs/essen/asia/china/xinhua
760	5	5.5KB	songs/folksongs/essen/asia/misc
1346	43	33.1KB	songs/folksongs/essen/europa/czech
376	9	6.3KB	songs/folksongs/essen/europa/danmark
5915	110	78.4KB	songs/folksongs/essen/europa/deutschl/allerkbd
15136	309	198.8KB	songs/folksongs/essen/europa/deutschl/altdeu1
15370	316	201.1KB	songs/folksongs/essen/europa/deutschl/altdeu2
27664	687	467.9KB	songs/folksongs/essen/europa/deutschl/ballad
40451	704	443.2KB	songs/folksongs/essen/europa/deutschl/boehme
6074	106	77.6KB	songs/folksongs/essen/europa/deutschl/dva
78764	1700	1001.8KB	songs/folksongs/essen/europa/deutschl/erk
33085	566	359.8KB	songs/folksongs/essen/europa/deutschl/fink
8393	213	117.1KB	songs/folksongs/essen/europa/deutschl/kinder
533	12	6.4KB	songs/folksongs/essen/europa/deutschl/test
901	26	14.9KB	songs/folksongs/essen/europa/deutschl/variant
31802	616	380KB	songs/folksongs/essen/europa/deutschl/zuccal
4496	91	56KB	songs/folksongs/essen/europa/elsass
235	4	3KB	songs/folksongs/essen/europa/england
626	14	10KB	songs/folksongs/essen/europa/france
330	8	4.9KB	songs/folksongs/essen/europa/italia
2607	115	66.2KB	songs/folksongs/essen/europa/jugoslav
2956	71	45.2KB	songs/folksongs/essen/europa/lothring
378	8	5.4KB	songs/folksongs/essen/europa/luxembrg
1590	45	28.7KB	songs/folksongs/essen/europa/magyar
1877	30	20.9KB	songs/folksongs/essen/europa/misc
3756	85	59.4KB	songs/folksongs/essen/europa/nederlan
5306	104	65.3KB	songs/folksongs/essen/europa/oesterrh
917	25	15.7KB	songs/folksongs/essen/europa/polska
1038	28	18.5KB	songs/folksongs/essen/europa/romania
1310	37	23.1KB	songs/folksongs/essen/europa/rossiya
4586	93	60KB	songs/folksongs/essen/europa/schweiz
480	11	7.5KB	songs/folksongs/essen/europa/sverige
1149	14	10.5KB	songs/folksongs/essen/europa/tirol
566	13	8.9KB	songs/folksongs/essen/europa/ukraina
4599	38	30.6KB	songs/foster
7543	29	51.6KB	songs/gershwin
14113	33	100.5KB	songs/harmonized/barbershop
62741	232	538.2KB	songs/harmonized/liederschatz
8552	152	150.9KB	songs/nova-scotia
85477	739	9.4MB	songs/pop/billboard
39729	105	805.6KB	songs/pop/cantonese
59607	200	3.5MB	songs/pop/rollingstone
27682	151	713.7KB	songs/psalms/gomolka
13018	50	268.7KB	songs/psalms/lasso
2612	50	78.7KB	songs/psalms/ulenberg
4842	35	59.9KB	songs/schubert
276	23	11.3KB	tonerow/berg
504	42	21.5KB	tonerow/schoenberg
252	21	10.9KB	tonerow/webern
*-	*-	*-	*-
!!!total-notes: 17989078
!!!total-files: 25679
!!!total-size: 380.9MB
```

</details>

The complete repository-download set contains 25,679 files
with a total of 17,989,078 sounding notes and total size of 373.2MB.


## Implementation notes ##

Downloaded repositories are stored in the `.source` directory, first
by owner and then by repository name.  The repositories are cloned from GitHub
with this command:

```bash
git clone --depth=1 --filter=blob:none --no-checkout <repository-url> <local-repository-name>
```

where `<repository-url>` is the URL to a GitHub-hosted repository,
and `<local-repository-name>` is the location on the local computer
to store the repository (downloaded repositories are stored in the
`.source` subdirectory).  Here are the meanings of the options that
download only a minimal footprint for a repository:


| Option | Meaning |
| ------ | ------- |
| `--depth=1` |  This option specifies that only the latest commit and its parent commits (up to the specified depth, in this case, 1) will be cloned.  It creates a shallow clone, which means you won't have the full history of the repository, but you'll save time and bandwidth by not downloading unnecessary historical data. |
| `--filter=blob:none` | This option, introduced in Git 2.19, sets a partial clone filter, specifying that no file content (blobs) will be cloned initially.  Instead, only the commit and tree objects are fetched.  This helps further reduce the amount of data transferred during the cloning process. |
| `--no-checkout` | This option prevents `git` from checking out the working directory after the clone is complete.  Typically, `git` automatically checks out the latest commit after cloning, but with --no-checkout, you can defer this step.  This can be useful when you want to save time and only fetch the repository metadata without checking out the actual files. |

Next, go inside of the downloaded repository and type this command:


```bash
git fetch origin <id>
```

where `<id>` is the index hash for the repository directory to
download (see the `getId()` function in
[bin/getRepositoryDirectory](https://github.com/humdrum-tools/humdrum-data/tree/main/bin/getRepositoryDirectory)
for how to identify the index hash of a particular subdirectory in the repository).

Then download the specific directories from the online repository:

```bash
git sparse-checkout add <source-directory>
git read-tree -mu FETCH_HEAD
git checkout-index -a --prefix=<source-directory>/
```

You can also set `$verboseQ = 1;` in the bin/getRepositoryDirectory script
to see the download and installation commands for each downloaded repository.

These commands are used to enable the sparse-checkout mode in `git`
and configure which directories are made visible in the repository's
working directory.  Sparse-checkout is a feature that allows you to
have a partial working directory by checking out only specific
directories from the repository rather than all of them.

This method is a bit complicated, but ensures that only the desired
directories are downloaded from the repository, and can avoid
downloading the entire repository which may contain large files
such as PDF files in other directories.


### Organization ###

Once the repositories are downloaded, a local directory structure
will be generated for the selected LIST file (in `.lists`) according
to the `**to` parameter in the LIST file that is used.  Files from
the downloaded repository will be symbolically linked to the local
file structure, so the `humdrum-data` directory will maintain a minimal
size, and the symbolic links are used to distinguish between local
and repository files when running `make clean` to preserve any
local files.  You will have to manually delete any local files if you
want to start from a fully clean state again.

Note that files from multiple online repository directories can be
merged into a single local directory (in which case there will be
multiple `.info` files, one for each source repository with a number
affixed to each additional `.info` file.  And it is also possible
to copy repository directory files to multiple local directories
if they can be separated by regular expressions using the `**filter`,
`**xfilter`, and `**sar` parameters in LIST files.

## Viewing music notation ##

If downloaded files contain `**kern` data (as most of the full dataset
file do), then you can copy the file and paste in Verovio Humdrum
Viewer (VHV) (https://verovio.humdrum.org) to view the corresponding
music notation for the file's contents.

On Macs, copy a file's contents like this:

```bash
cat file.krn | pbcopy
```

Then paste into the text editor on VHV.

On linux, it is more complicated to copy the contents of a file
to the pasteboard/clipboard to paste into VHV, but typically in
one of these ways:

```bash
xclip -sel clip < file.krn
xsel --clipboard < file.krn
```

You may need to install these commands if they are not available, something like:

```bash
sudo apt-get install xclip
sudo apt-get install xsel
```

You can also drag-and-drop Humdrum files into VHV from the Finder or File Manager.


## Alternate methods of downloading scores ##

In addition to using this repository to download Humdrum files,
other methods of downloading files from the command-line are described
below.


### kernScores ###

[KernScores](https://kern.humdrum.org) includes most of the
repositories available with this interface, but there are smaller
collections that are only available on kernScores (and not or not
yet on Github).

* [Browse](https://kern.humdrum.org/browse?type=collection&l=/) kernScores

There is also a "shortcuts" page which allows easier download on the
command line.  For example here is downloading of the first Bach chorale:

```bash
humcat humdrum://chorales/chor001.krn > chor001.krn
humcat hum://chorales/chor001.krn > chor001.krn
humcat h://chorales/chor001.krn > chor001.krn
```

The prefixes `humdrum://`, `hum://` and `h://` are all alias meaning
a `humdrum`
[URI](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier),
which is converted into a kernScores URL internal to the
[humcat](https://extras.humdrum.org/man/humcat) tool.

Here is an example use of `humcat` to download a file without saving
it, using the [key](https//www.humdrum.org/tool/key) Humdrum tool:

```bash
humcat h://chorales/chor001.krn | key
```

An entire directory of files on kernScores can be downloaded to a
single Humdrum file:

```bash
humcat -s h://chorales > chorales.krns
```

In this case the `-s` option is used to preserve segments (separate
sections of data that start with an exclusive interpretation and
end with a spine terminator).  Without the `-s` the `humcat` tool
will merge a files into a single long (set) of spines (or there
will be an error if the spine counts are not the same).  I add the
`s` to `.krns` to indicate the the multiple works are stored in the
file.  Here is an example of using the multi-file download method
without saving the data:

```bash
humcat -s h://chorales | census -k
```

Results:

```
HUMDRUM DATA

Number of data tokens:     143712
Number of null tokens:     34219
Number of multiple-stops:  0
Number of data records:    35928
Number of comments:        7191
Number of interpretations: 4800
Number of records:         47919

KERN DATA

Number of note-heads:      86066
Number of notes:           84624
Longest note:              0
Shortest note:             32
Highest note:              aa
Lowest note:               CC
Number of rests:           783
Maximum number of voices:  4
Number of single barlines: 5291
Number of double barlines: 370
```

You can also use `humcat` to download all works in a kernScores
directory into separate files:

```bash
mkdir chorales
cd chorales
humcat -s h://chorales | humsplit
```

Where the Humdrum Extras tool
[humsplit](https://extras.humdrum.org/man/humsplit) takes multi-file
Humdrum data and splits them back into individual files.


### Renaissance and Polish scores ###

Digital scores from the [Josquin Research
Project](https://josquin.stanford.edu), [Tasso in Music
Project](https://tassomusic.org), [The 1520s
Project](https://1520s-project.org), and the [Polish Music in Open
Access](https://polishscores.org) project can be downloaded from
on the command line by file ID.  Currently files from these alternate repository
structures cannot be downloaded with `humcat`, but can be downloaded
with `curl` (on MacOS) and `wget` (linux).

Using example IDs from these repositories (MacOS):

```bash
curl -O https://data.josqu.in/Jos2721.krn
curl -O https://data.tassomusic.org/Trm0047a.krn
curl -O https://data.1520s-project.org/Wil2099.krn
curl -O https://polishscores.org/?id=wtm--a-40-710-94.krn
curl https://humdrum.nifc.pl/19xx:1.krn > popc2-19xx_1.krn
```

The colon cannot/should not be used on MacOS (without difficulty)
so an alternate method is shown for downloading the Polish score,
where `19xx:1` means the first score from the 20th century dataset
(these numbers are mostly consecutive, but there are some gaps in
the accession numbers).  The Polish ID `wtm--a-40-710-94` means that
the (paper) source score for the digital score is from the [Warsaw
Music Society](https://warszawskietowarzystwomuzyczne.pl/biblioteka)
and `a-40-710-94` is (based on) the call number for the score in
their library.

Same examples using `wget` (in linux):

```
wget https://data.josqu.in/Jos2721.krn
wget https://data.tassomusic.org/Trm0047a.krn
wget https://data.1520s-project.org/Wil2099.krn
wget https://polishscores.org/?id=wtm--a-40-710-94.krn
wget https://humdrum.nifc.pl/19xx:1.krn -o popc2-19xx_1.krn
```

If you want to use `wget` instead of `curl` in MacOS, install `wget`
with [Homebrew](https://brew.sh):

```
brew install wget
```

The downloaded data can be piped directly to Humdrum tools as the
file is being downloaded, such as with the
[census](https://www.humdrum.org/tool/census) tool::

```bash
curl https://data.josqu.in/Jos2721.krn | census -k
curl https://data.tassomusic.org/Trm0047a.krn | census -k
curl https://data.1520s-project.org/Wil2099.krn | census -k
curl https://polishscores.org/?id=wtm--a-40-710-94.krn | census -k
curl https://humdrum.nifc.pl/19xx:1.krn | census -k
```

`wget` examples:

```bash
wget https://data.josqu.in/Jos2721.krn | census -k
wget https://data.tassomusic.org/Trm0047a.krn | census -k
wget https://data.1520-sproject.org/Wil2099.krn | census -k
wget https://polishscores.org/?id=wtm--a-40-710-94.krn | census -k
wget https://humdrum.nifc.pl/19xx:1.krn | census -k
```



