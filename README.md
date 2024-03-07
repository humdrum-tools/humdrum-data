
# Humdrum Data #

The `humdrum-data` repository manages collections of
[Humdrum](https://humdrum.org) files found in other
[GitHub](https://github.com) repositories.

You can also design your own local directory structure, or choose
subsets of the complete downloadable dataset.  See the "Adding more
repositories/data subsets" section below for more information.  The current
full download list and local directory mappings can be found in
[.lists/LIST.tsv](https://github.com/humdrum-tools/humdrum-data/tree/main/.lists/LIST.tsv),
and the
[.lists](https://github.com/humdrum-tools/humdrum-data/tree/main/.lists)
directory gives example for downloading smaller datasets.

By default all registered Humdrum file repositories will be downloaded
by typing `make`, which currently includes 15,934 scores
containing 18,556,930 sounding notes (some repositories are not
notation based and contain only `**harm`, etc.).  The current size
of all Humdrum files is 376MB.


## Summary ##

For experienced unix users, here are instructions for downloading
Humdrum files using this repository:

```bash
git clone https://github.com/humdrum-tools/humdrum-data
cd humdrum-data
make
```

To update files at a later date, it is currently best to run:

```bash
make clean
```

And then re-download the entire dataset again:

```bash
make
```

Or re-download a specific subset such as Classical-era piano
[sonatas](https://github.com/humdrum-tools/humdrum-data/blob/main/.lists/LIST-sonatas.tsv):

```bash
make sonatas
```

For more detailed download instructions and configuration
possibilities, see below.

## Preliminaries ##

This repository uses the [git](https://en.wikipedia.org/wiki/Git)
and [make](https://en.wikipedia.org/wiki/Make_(software)#Derivatives)
commands, so they need to be installed on your computer before you
can download the Humdrum files. The minimum version of git that can 
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


### git caveat ###

Note that [`git` 2.25.0](https://github.blog/2020-01-17-bring-your-monorepo-down-to-size-with-sparse-checkout)
(2020) is the minimum version of `git` that can be used with this
repository.  You can check your version of `git` with the command:

```bash
git -v
```

A good reply would be something like this:

```
git version 2.39.2 (Apple Git-143)
```

Upgrade your version of `git` if it is less than version 2.25.


## Downloading scores ##

First download this repository using git (although downloading from
GitHub as a [ZIP
file](https://github.com/humdrum-tools/humdrum-data/archive/refs/heads/main.zip)
also works):

```bash
git clone https://github.com/humdrum-tools/humdrum-data
```

This will create a directory in the current working directory called
`humdrum-data`.  Next, move into the repository directory with this
command:

```bash
cd humdrum-data
```

To download all available Humdrum digital scores, type this command
in the root directory of this repository:

```bash
make
```

This will download all repositories found in the file
[.lists/LIST.tsv](https://github.com/humdrum-tools/humdrum-data/blob/main/.lists/LIST.tsv).
The
[.lists](https://github.com/humdrum-tools/humdrum-data/blob/main/.lists)
directory also contains other lists of repository subsets that can be downloaded:

| Make target | Description |
| ----------- | ----------- |
| `make`      | Download all repository files |
| `make 1520s-short` | The 1520s Project digital scores, ID only filenames |
| `make 1520s` | The 1520s Project digital scores |
| `make cantopop` | A corpus of Cantonese popular music, 2000–2020 |
| `make chorales` | 370 J.S. Bach four-part harmonized chorales |
| `make densmore` | Native American songs collected by Francis Densmore |
| `make joplin` | Piano music by Scott Joplin |
| `make jrp` | Josquin Research Project digital scores |
| `make mysterium` | Mysterium: Piano music of Scriabin |
| `make nifc` | Digital scores from The Fryderyk Chopin Institute (Chopin first editions (POPC1) and Polish Musical Heritage (1600-1900) in Open Access (POPC2)) |
| `make popc2-short` | Polish Music in Open Access digital scores, ID only filenames |
| `make popc2` | Polish Music in Open Access digital scores |
| `make sonatas` | Classical piano sonatas of Beethoven (complete), Mozart (complete), and Haydn (selections) |
| `make tasso` | Tasso in Music Project digital scores |
| `make tonerow` | Tonerows used by Schoenberg, Berg and Webern |



### Adding local files ###

If you store your own files in a downloaded directory or a directory
that you created, they will not be deleted when cleaning or updating
a repository set with the `make` command.  This is accomplished by
storing repository files as symbolic links, and only symbolic links
will be deleted when changing the downloaded file structure. For
example, if you have any of your own analysis files in
`beethoven/piano/sonata`, they will remain after running `make
clean`.  Running `make` will restore an update of any repository
files in the same directory.


### Source information ###

Each local directory contains a file called `.info` that includes
a hyperlink to the source GitHub repository for files in the
directory.  If there are files from multiple repositories included
in the same directory, there will be multiple `.info` files, such
as `.info2` for a second merged repository directory, `.info3` for
the third, and so on.

For example, if you run `make sonatas`, a directory called
`sonatas` will be created in the base directory of this repository
with three .info files (including `.info2` and `.info3`), giving
information about each source repository.  Here is the contents of 
`.info2` for the Mozart sonatas in the `sonatas` dataset:

```tsv
!!!source:             https://github.com/craigsapp/mozart-piano-sonatas
!!!download-date:      Wed Mar  6 23:49:25 PST 2024
!!!last-commit:        https://github.com/craigsapp/mozart-piano-sonatas/tree/44330d18
!!!last-commit-date:   Sun Jun 18 10:32:56 2023
!!!repository-license: https://github.com/craigsapp/mozart-piano-sonatas/blob/main/LICENSE.txt 
!!!repository-readme:  https://github.com/craigsapp/mozart-piano-sonatas/blob/main/README.md
!! vim:                ts=39:nowrap
!!
!! Directories downloaded from this repository are listed below.
!!
!! Meaning of the spines:
!!    **sound   = Number of sounding notes in the copied files. If a
!!                null token, then the Humdrum Extras notecount tool
!!                was not available when the repository was downloaded.
!!    **files   = Number of files in the copied directory.
!!    **bytes   = Byte size of files copied to local directory.
!!    **from    = The subdirectory in the repository lised in the source
!!                refence record above that files were copied from.
!!                A null token means the root of repository working directory.
!!    **to      = The subdirectory in the repository lised in the source
!!                refence record above that files were copied from.
!!                A null token means the root of target directory.
!!    **prefix  = Prefix string to add to copied filename (if any).
!!    **suffix  = Suffix string to add to copied filename (if any).
!!    **filter  = Copy only files with given PERL/JavaScript regex.
!!    **xfilter = Exclude fils with the given PERL/JavaScript regex.
!!    **sar     = sed-like search and replacement for filename (before
!!                prefix and suffix are added).  Multiple SAR entries
!!                can be given, separated by semicolons (;).
!!
**sound	**files	**bytes	**from	**to	**prefix	**suffix	**filter	**xfilter	**sar
96637	69	996160	kern	mozart/piano/sonata	.	.	.	.	.
*-	*-	*-	*-	*-	*-	*-	*-	*-	*-
```

There are six reference records in info files:

| Reference key | Meaning |
| ---------------- | ------- |
| `source`             | URL for the repository on GitHub. |
| `download-date`      | Date that the repository was downloaded to the local computer. |
| `last-commit`        | URL to the specific state of the repository that was downloaded. |
| `last-commit-date`   | Last commit date of the repository when it was downloaded. |
| `repository-license` | URL to License information for the repository (if any).
| `repository-readme`  | URL to Readme file for the repository (if any). |

Humdrum data describing the number of notes, number of copied files,
and the sizes of the file, will be added in the data section of the
info files, as well as input parameters for normalizing filenames
and including/excluding files within the copied directory files.
In the above example there is a single directory of files, so there
is only one line of data in the `.info` file.  Other repositories
may have multiple directories of data that are copied, and each
line of data in the info files will record information about each
directory that was copied.

Note that the info file `sonatas/.info2` is the same as in the
entire default dataset `mozart/piano/sonatas/.info`.  In the main
downloadable dataset, these three repositories are stored in separate
directories (`beethoven/piano/sonata`, `mozart/piano/sonata` and
`haydn/piano/sonata`).  The `make sonatas` target demonstrates how
to merge multiple repositories, as well as making the filenames
unique by prefixing the source composer name to each filename (since
filenames between these three repositories are not unique).  See
the
[LIST-sonatas.tsv](https://github.com/humdrum-tools/humdrum-data/tree/main/.lists/LIST-sonatas.tsv)
for an example of how to do this using the `**prefix` parameter.

On the GitHub webpage for the source of the files listed in the
info files, there should be a README file describing the data set
as well as any licensing information (Humdrum files should also
contain reference records for this information, in particularly
`YEC` (copyright notice) and `YEM` (license).  If one or both
of these files are found, then their URLs will appear in the
`repository-license` and `repository-readme` reference records
of an info file.


### Adding more repositories/data subsets ###

Here is a table of repositories that are currently available within
the main download list:

| Notes | Files | Size | Repository owner | Repository name |
| ----- | ----- | ---- | ---------------- | --------------- |
| 244,083| 206| 2.5MB| [bel28kent](https://github.com/bel28kent) | [Mysterium](https://github.com/bel28kent/Mysterium) |
| 321,175| 340| 3.1MB| [benory](https://github.com/benory) | [1520s-project-scores](https://github.com/benory/1520s-project-scores) |
| 145,084| 940| 12.9MB| [Computational-Cognitive-Musicology-Lab](https://github.com/Computational-Cognitive-Musicology-Lab) | [CoCoPops](https://github.com/Computational-Cognitive-Musicology-Lab/CoCoPops) |
| 0| 124| 1.8MB|  〃  | [MCFlow](https://github.com/Computational-Cognitive-Musicology-Lab/MCFlow) |
| 84,624| 370| 931.9KB| [craigsapp](https://github.com/craigsapp) | [bach-370-chorales](https://github.com/craigsapp/bach-370-chorales) |
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
| 0| 0| 0B|  〃  | [Mou](https://github.com/josquin-research-project/Mou) |
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
| 2,231,622| 1,024| 29.2MB| [pl-wnifc](https://github.com/pl-wnifc) | [humdrum-chopin-first-editions](https://github.com/pl-wnifc/humdrum-chopin-first-editions) |
| 11,817,127| 7,821| 280.5MB|  〃  | [humdrum-polish-scores](https://github.com/pl-wnifc/humdrum-polish-scores) |
| 17,163| 84| 739.2KB| [polyrhythm-project](https://github.com/polyrhythm-project) | [rds-scores](https://github.com/polyrhythm-project/rds-scores) |
| 66,040| 915| 987.8KB| [shanahdt](https://github.com/shanahdt) | [densmore](https://github.com/shanahdt/densmore) |
| 316,292| 501| 6.2MB| [TassoInMusicProject](https://github.com/TassoInMusicProject) | [tasso-scores](https://github.com/TassoInMusicProject/tasso-scores) |
| 13,018| 50| 268.7KB| [WolfgangDrescher](https://github.com/WolfgangDrescher) | [lassus-geistliche-psalmen](https://github.com/WolfgangDrescher/lassus-geistliche-psalmen) |
| 2,612| 50| 78.7KB|  〃  | [ulenberg-psalmen-davids](https://github.com/WolfgangDrescher/ulenberg-psalmen-davids) |


You can create your own list of repositories to download by creating
a file in the `.lists` directory, such as `.lists/LIST-mylist.tsv`.
Then run `make mylist` to download your own curation of Humdrum
files.  Alternatively, edit
[.lists/LIST.tsv](https://github.com/humdrum-tools/humdrum-data)
to arrange the downloaded repositories in a directory organization
of your choice (see the `**to` parameter below). If you change any
of the existing LIST file, then you cannot do `git pull` to update
any of the online lists.  Adding your own files will not have this
limitation unless an online list is created with the same name in
the future.

Configuration parameters for downloading GitHub repositories to the
local computer that the `LIST` files recognize:

Required parameters:

| Spine | Meaning |
| ----- | ------- |
|  `**ghname` | The name of the owner account where the repository resides. |
|  `**ghrepo` | The name of the repository to download from. |
|  `**from`   | The name of the directory in the GitHub repository to copy from (this can be a null token if files are located in the root directory of the GitHub repository, but see the `**filter` parameter to exclude non-Humdrum files. |
|  `**to`     | The name of the local directory into which the Humdrum files should be copied. |

Optional parameters:

| Spine | Meaning |
| ----- | ------- |
| `**prefix`  | A string that should be prefixed to each copied file.  This is useful when merging multiple files into a single local directory where filenames within the multiple sources are not unique. |
| `**suffix`  | Similar to the prefix parameter, but added to the end of the copied file.  This is useful when the repository files do not have a file extension, and you want to append ".krn" to the end of each file. |
| `**filter`  | Allow only files matching the given regular expression from being copied into the local directory from the downloaded repository. |
| `**xfilter` | Exclude files matching the given regular expression from being copied into the local directory. |
| `**sar`     | A search-and-replace string to do more complicated renaming of copied files.  The form of the string should be like the `sed` command-line tool, such as `s/match/replace/g`. Multiple entries can be separated by a semi-colon (`;`). |

The parameters can be placed in any order and optional ones can be omitted. See 
example uses of these parameters in the sample `LIST` files found in the
[.lists](https://github.com/humdrum-tools/humdrum-data/tree/main/.lists)
directory.

If you want a GitHub Humdrum digital score repository to be included
in the default list that is installed with the `make` command,
submit a request on the
[issues](https://github.com/humdrum-tools/humdrum-data/issues) page
of this repository, giving the necessary parameters described above.
The final copy to the local directory structure should only contain
valid Humdrum files (use the prefix, suffix, filter, xfiler and sar
parameters for complicated cases, such as with the 
[densmore](https://github.com/humdrum-tools/humdrum-data/tree/main/.lists/LIST-densmore.tsv) 
dataset).


### Making your repositories more visible on GitHub ###

As a side note, it is useful to add the [topic
tags](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/classifying-your-repository-with-topics)
`humdrum` and `digital-scores` to your repository. To add *topics* to your
repository, click on the gear icon next to the About section on the repository
home page (near the top left, but below the "Settings" gear icon):

<img width="646" alt="Screenshot 2024-02-28 at 10 18 57" src="https://github.com/humdrum-tools/humdrum-data/assets/3487289/a9b4070b-2a35-4d01-b959-9bd92e765cee">

In the above example, `humdrum` and `digital-scores` have been
added to the `Topics` field.

To search GitHub repositories by topic, do this search (by clicking on
the magnifying glass at the top of a repository page):

<img width="595" alt="Screenshot 2024-02-28 at 10 22 06" src="https://github.com/humdrum-tools/humdrum-data/assets/3487289/e04c35c1-0621-4b3a-aedb-85426101b72f">

In other words, type `topic:humdrum topic:digital-scores` to search by
these two topics.  Here is the search results page:

<img width="747" alt="Screenshot 2024-02-28 at 10 27 22" src="https://github.com/humdrum-tools/humdrum/assets/3487289/1a922178-8e93-4ff7-8ee1-6fafe01e1f12">

Here is a direct link to the search page for the humdrum + digital-scores topics:

https://github.com/search?q=topic%3Ahumdrum%20topic%3Adigital-scores&type=repositories

48 GitHub repositories are currently labeled with these topics.

If you do this, I may encounter your repository and add it to the
main repository list by myself. :wink:


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


### Archiving a current version of data ###

If you want to keep the current version of files in a local directory
(such as the same copy of the files used to generate results in a
paper), you can copy the directory before running `make clean`:

```bash
make joplin
cp -RL joplin joplin-20240229
```

The `joplin-20240229` directory will resolve symbolic links to the
source files and will not be deleted when `make clean` is run.

The `cp -RL` method is also useful if you want to copy of the Humdrum
files outside of the `humdrum-data` directory.  All downloaded files
are stored as relative links to the repository directories in
`.source`, so otherwise moving the local directories outside of the
`humdrum-data` directory using `cp -r` of `mv`, or even usually
moving them within the `humdrum-data` directory (unless they are
at the same directory depth as the copied source) will break these
links.  Moving them within the repository should best be done by
editing the LIST files used to download data, to create a rearrangement
of the local file structure to your liking.


## Data errors ##

When there are data errors in downloaded files, contact the repository
owner to get them to fix the problem.  This is typically done by
going to the issues page for the source repository.  Some repositories
also include scans of the source editions, such as the
[mozart-piano-sonatas](https://github.com/craig-sapp/mozart-piano-sonatas/tree/main/reference-edition)
repository, which can be used to verify the digital score transcriptions.

Files should not produce errors (and preferably not warnings) when
checked with the [humdrum](https://humdrum.org/tool/humdrum) tools,
that is also up to the maintainers of the source repositories.  The
basic Humdrum structure should be correct for the full data set.
Commented out repository directories in `.lists/LIST*.tsv` files
typically indicates that there are problems in the Humdrum structure
if one or more file in the source directory, so that directory or
specific files are excluded from the downloads.


## Note counts ##

The command `make nc` or `make note-counts` will produce a list of
note, file, and file size counts for downloaded repositories, both
the complete list and any subsets.  Duplicate files will not be
double counted in the totals at the end of the results.

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
1115811	512	14.6MB	chopin/first-editions
54917	52	529.2KB	chopin/mazurkas
18705	24	162.4KB	chopin/preludes
146369	250	1.3MB	corelli
10784	82	100.5KB	densmore/acoma
3665	53	40.6KB	densmore/maidu
3873	73	100.7KB	densmore/mandan
7470	140	93.1KB	densmore/menomiee
6184	110	85KB	densmore/northute
4844	86	228.2KB	densmore/pawnee
13718	243	167.7KB	densmore/seminole
15249	128	171.8KB	densmore/yuman
19851	10	190.3KB	early-music/agricola
47922	86	742.9KB	early-music/anonymous
6314	7	60.9KB	early-music/anonymous-1520s
561	1	4.6KB	early-music/barra
7030	7	71.4KB	early-music/bauldeweyn
275	1	7KB	early-music/binchois
1004	1	8.4KB	early-music/bisegueria
22999	6	533.9KB	early-music/brumel
33458	68	363.9KB	early-music/busnoys
1126	1	20.8KB	early-music/champion
10941	27	101KB	early-music/compere
4481	4	38.5KB	early-music/conseil
7608	5	164.1KB	early-music/daser
34742	37	684.9KB	early-music/dufay
547	1	5.3KB	early-music/erasmus
551	1	5.3KB	early-music/fage
25926	23	267.1KB	early-music/festa-costanzo
2080	4	18KB	early-music/festa-sebastiano
6571	6	117.7KB	early-music/fevin-antoine
1150	2	16.3KB	early-music/frye
5049	3	54KB	early-music/gascongne
102339	110	1.9MB	early-music/gaspar
15531	9	139.5KB	early-music/gombert
10297	5	105.3KB	early-music/isaac
17296	16	160.9KB	early-music/jachetofmantua
3930	7	31KB	early-music/jacotin
12814	9	108.9KB	early-music/janmaistre
9835	22	93.6KB	early-music/japart
499288	475	6MB	early-music/josquin
200915	172	2MB	early-music/larue
1582	1	13.6KB	early-music/lasantier
13018	50	268.7KB	early-music/lassus
18962	16	159.7KB	early-music/lheritier
4167	3	33.5KB	early-music/lupi
6207	7	54.2KB	early-music/lupus
95605	122	877.9KB	early-music/martini
8338	8	74.1KB	early-music/moulu
19751	21	189.3KB	early-music/mouton
23603	15	233.1KB	early-music/obrecht
87879	98	1.1MB	early-music/okeghem
52863	44	681.8KB	early-music/orto
5620	5	125.7KB	early-music/pipelare
6012	4	108.4KB	early-music/regis
766	2	7.4KB	early-music/renaldo
30933	28	312.5KB	early-music/richafort
20234	32	339.7KB	early-music/senfl
7902	12	75.2KB	early-music/sermisy
9049	9	83.5KB	early-music/silva
316292	501	6.2MB	early-music/tasso
1696	2	16KB	early-music/therache
19127	19	186.4KB	early-music/tinctoris
29749	41	250.8KB	early-music/verdelot
4870	3	43.4KB	early-music/vinders
52053	60	521.2KB	early-music/willaert
35349	25	376.4KB	haydn/piano
338549	210	2.8MB	haydn/quartet
157809	24	2.2MB	haydn/symphony
3320	24	53.4KB	hummel/preludes
68545	47	558KB	joplin
96637	69	972.8KB	mozart/piano/sonata
151828	82	1.3MB	mozart/quartet
1115811	512	14.6MB	nifc/popc1
38381	3	2.9MB	nifc/popc2/a-wn
37587	3	2.1MB	nifc/popc2/ch-gmu
44979	32	869KB	nifc/popc2/d-b
322	1	4.6KB	nifc/popc2/d-bnu
941	2	14.6KB	nifc/popc2/d-dl
9131	29	146.3KB	nifc/popc2/d-hs
823	1	17.4KB	nifc/popc2/d-mbs
3334058	1298	91.3MB	nifc/popc2/pl-cz
190699	246	5.1MB	nifc/popc2/pl-dg
71795	108	841.4KB	nifc/popc2/pl-kc
80757	32	1.2MB	nifc/popc2/pl-kj
1361393	1804	37.2MB	nifc/popc2/pl-kk
81197	167	1.2MB	nifc/popc2/pl-kozmk
1571035	1244	31.1MB	nifc/popc2/pl-sa
379189	154	9.6MB	nifc/popc2/pl-stab
790823	505	16.5MB	nifc/popc2/pl-wn
333658	394	4.6MB	nifc/popc2/pl-wnifc
43126	24	792.5KB	nifc/popc2/pl-wru
2468022	1387	47MB	nifc/popc2/pl-wtm
841709	341	23.5MB	nifc/popc2/pl-wumfc
137502	46	4.5MB	nifc/popc2/s-uu
17163	84	739.2KB	polyrhythm/rds
68489	65	707.4KB	scarlatti/sonata
244083	206	2.5MB	scriabin/piano
14113	33	100.5KB	songs/harmonized/barbershop
62741	232	538.2KB	songs/harmonized/erk-liederschatz
1824	38	25.2KB	songs/monophonic/child-ballads
16091	245	329.3KB	songs/monophonic/densmore/sioux
4599	38	30.6KB	songs/monophonic/foster
7543	29	51.6KB	songs/monophonic/gershwin
8552	152	150.9KB	songs/monophonic/nova-scotia
4842	35	59.9KB	songs/monophonic/schubert
85477	739	9.4MB	songs/pop/billboard
39729	105	805.6KB	songs/pop/cantonese
59607	200	3.5MB	songs/pop/rollingstone
276	23	11.3KB	tonerow/berg
504	42	21.5KB	tonerow/schoenberg
252	21	10.9KB	tonerow/webern
2612	50	78.7KB	ulenberg
*-	*-	*-	*-
!!!total-notes: 17440866
!!!total-files: 15421
!!!total-size: 376MB

```

</details>

The complete repository-download set contains 15,934 files
with a total of 18,556,930 sounding notes and total size of 376MB.


## Implementation notes ##

Downloaded repositories are stored in the `.source` directory, first
by owner and then by repository name.  The repositories are cloned from GitHub
with this command:

```bash
git clone --depth=1 --filter=blob:none --no-checkout <repository-url> <local-repository-name>
```

where `<repository-url>` is the URL to a GitHub-hosted repository,
and `<local-repository-name>` is the location on the local computer
to store the repository.  Here are the meanings of the options which
download only a minimal size of the repository:


| Option | Meaning |
| ------ | ------- |
| `--depth=1` |  This option specifies that only the latest commit and its parent commits (up to the specified depth, in this case, 1) will be cloned. It creates a shallow clone, which means you won't have the full history of the repository, but you'll save time and bandwidth by not downloading unnecessary historical data. |
| `--filter=blob:none` | This option, introduced in Git 2.19, sets a partial clone filter, specifying that no file content (blobs) will be cloned initially. Instead, only the commit and tree objects are fetched. This helps further reduce the amount of data transferred during the cloning process. |
| `--nocheckout` | This option prevents Git from checking out the working directory after the clone is complete. Typically, Git automatically checks out the latest commit after cloning, but with --nocheckout, you can defer this step. This can be useful when you want to save time and only fetch the repository metadata without checking out the actual files. |

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
git checkout-index -a --prefix=<source-directory>
```

These commands are used to enable the sparse-checkout mode in `git`
and configure which directories are made visible in the repository's
working directory. Sparse-checkout is a feature that allows you to
have a partial working directory by checking out only specific files
or directories from the repository.

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
if they can be separated by regular expressions using the FILTER,
XFILE, and SAR parameters in LIST files.

## Viewing music notation ##

If the files contain `**kern` data (as most of the full dataset
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
humcat humd://chorales/chor001.krn > chor001.krn
humcat h://chorales/chor001.krn > chor001.krn
```

The prefixes `humdrum://`, `hum://` and `h://` are all alias meaning
a `humdrum`
[URI](https://en.wikipedia.org/wiki/Uniform_Resource_Identifier),
which is converted into a kernScores URL internal to the
[humcat](https://extras.humdrum.org/man/humcat) tool.

Here is an example use of `humcat` to download a file without saving
it, using the [key](https//humdrum.org/tool/key) Humdrum tool:

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
will be an error if the spine counts are not the same). I add the
`s` to `.krns` to indicate the the multiple works are stored in the
file.  Here is an example of using the multi-file download method
without saving the data:

```bash
humcat -s h://chorales | census -k
``

You can also use `humcat` to download all works in a kernScores
directory to separate files:

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
the accession numbers). The Polish ID `wtm--a-40-710-94` means that
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
[census](https://humdrum.org/tool/census) tool::

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



