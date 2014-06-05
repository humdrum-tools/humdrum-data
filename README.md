humdrum-data
============

The humdrum-data repository contains a collection of musical scores
in the Humdrum file format for use with Humdrum-processing software.
The primary collection of command-line Humdrum processing software for use
with this data can be found [here](https://github.com/humdrum-tools), and
documentation about Humdrum can be found [here](http://www.humdrum.org).


Installing git
==============

To download this repository, you should have git installed on your
computer.  [Git](http://git-scm.com/book/en/Getting-Started-Git-Basics) 
is a version control program which is the main interface to online
repositories on GitHub.  To check if the ```git``` program is
installed on your computer, type in a terminal:
```bash
   which git
```
If the terminal replies with a line such as ```/usr/local/bin/git```,
then git is installed and you can run the above installation commands.
If the ```which``` command replies with an error that git cannot
be found, you need to install git.  How to do this will depend on
your operating system.  

In linux, the installation command for git is usually one of these two 
possibilities:
```bash
   sudo yum install git
   sudo apt-get install git
```

For [cygwin](http://www.cygwin.com) on MS Windows computers, you
should have included ```git``` when installing packages when you
first installed cygwin.  Re-run the installation program and include
git in the package installation list.

For Apple OS X, the easiest method is to download git from [this
link](http://git-scm.com/download/mac).  More advanced Mac users
can use [Homebrew](http://brew.sh) to install git:
```bash
   brew install git
```

You could also download GUI interfaces for git
[here](http://git-scm.com/downloads/guis).  A [Github/git
plugin](http://eclipse.github.com) is also available for the Eclipse
IDE ([watch video](http://www.youtube.com/watch?v=ptK9-CNms98)).


Download
========

To download the humdrum-data repository, use this command:
```bash
    git clone --recursive https://github.com/humdrum-tools/humdrum-data
```

The ```--recursive``` option is needed to include other data 
repositories which are linked to the humdrum-data repository 
as [submodules](http://git-scm.com/book/en/Git-Tools-Submodules).

The humdrum-data repository can also be downloaded within the 
[humdrum-tools](https://github.com/humdrum-tools/humdrum-tools) 
package of command-line Humdrum-processing software:
```bash
    git clone --recursive https://github.com/humdrum-tools/humdrum-tools
    cd humdrum-tools 
    make data
```

The ZIP file link on the right-hand side of this github page will currently
not include submodules (GitHub may add this functionality in the future).
To download by ZIP files, you will also have to get the ZIP file for 
each included repository separately.


Data overview
=============

Here is a alphabetic listing of data directories within the repository:

<table cellpadding="0" cellspacing="0">
<tr valign="top" style="border-bottom:1px solid black"><td width="150"><em>Directory</em></td><td></td><td><em>Description</em></td></tr>

<tr valign="top" style="background-color:#dddddd">
<td><span style="font-weight:bold; font-family:Arial Rounded MT Bold">bach-js</span></td>
<td width="20">&nbsp;</td>
<td>Music by Johann Sebastian Bach (1685&ndash;1750)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/craigsapp/bach-371-chorales">371-chorales</a></span></td>
<td width="20">&nbsp;</td>
<td>371 four-part chorales collected by C.P.E. Bach and Johann Kirnberger, published by Breitkopf & H&auml;rtel from <a href=http://kern.humdrum.org/browse?l=371chorales>kernScores</a></td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/musedata/humdrum-bach-brandenburg">brandenburg</a></span></td>
<td width="20">&nbsp;</td>
<td>Brandenburg concertos</a></td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/humdrum-tools/bach-wtc">wtc</a></span></td>
<td width="20">&nbsp;</td>
<td>Well-tempered Claiver, Books I & II</a></td>
</tr>

<tr valign="top" style="background-color:#dddddd">
<td><span style="font-weight:bold; font-family:Arial Rounded MT Bold">beethoven</span></td>
<td width="20">&nbsp;</td>
<td>Music by Ludwig van Beethoven (1770&ndash;1827)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/craigsapp/beethoven-piano-sonatas">piano-sonatas</a></span></td>
<td width="20">&nbsp;</td>
<td>32 piano sonatas from <a href=http://kern.humdrum.org/browse?l=beethoven/sonatas>kernScores</a></td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/craigsapp/beethoven-quartets">quartets</a></span></td>
<td width="20">&nbsp;</td>
<td>16 string quartets from <a href=http://kern.humdrum.org/browse?l=beethoven/quartets>kernScores</a></td>
</tr>

<tr valign="top" style="background-color:#dddddd">
<td><span style="font-weight:bold; font-family:Arial Rounded MT Bold">chopin</span></td>
<td width="20">&nbsp;</td>
<td>Music by Fr&eacute;d&eacute;ric Chopin (1810&ndash;1839)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/craigsapp/chopin-mazurkas">mazurkas</a></span></td>
<td width="20">&nbsp;</td>
<td>49 mazurkas from <a href=http://kern.humdrum.org/browse?l=chopin/mazurkas>kernScores</a></td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/craigsapp/chopin-preludes">preludes</a></span></td>
<td width="20">&nbsp;</td>
<td>24 preludes from <a href=http://kern.humdrum.org/browse?l=chopin/preludes>kernScores</a></td>
</tr>

<tr valign="top" style="background-color:#dddddd">
<td><span style="font-weight:bold; font-family:Arial Rounded MT Bold">haydn</span></td>
<td width="20">&nbsp;</td>
<td>Music by Joseph Haydn (1732&ndash;1809)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/musedata/humdrum-haydn-quartets">quartets</a></span></td>
<td width="20">&nbsp;</td>
<td>String Quartets (converted from MuseData) also on <a href=http://kern.humdrum.org/browse?l=haydn/quartets>kernScores</a></td>
</tr>

<tr valign="top" style="background-color:#dddddd">
<td><span style="font-weight:bold; font-family:Arial Rounded MT Bold">hummel</span></td>
<td width="20">&nbsp;</td>
<td>Music by Johann Nepomuk Hummel (1778&ndash;1837)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/craigsapp/hummel-preludes">preludes</a></span></td>
<td width="20">&nbsp;</td>
<td>24 preludes from <a href=http://kern.humdrum.org/browse?l=hummel/preludes>kernScores</a></td>
</tr>

<tr valign="top" style="background-color:#dddddd">
<td><span style="font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/craigsapp/joplin-rags>joplin</a></td>
<td width="20">&nbsp;</td>
<td>Music by Scott Joplin (<em>c</em>1867&ndash;1917) from <a href=http://kern.humdrum.org/browse?l=joplin>kernScores</a></td>
</tr>

<tr valign="top" style="background-color:#dddddd">
<td><span style="font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/jrp-scores>jrp</a></td>
<td width="20">&nbsp;</td>
<td>Music of the early Renaissance (<em>c</em>1425&ndash;<em>c</em>1525) from the <a href=http://josquin.stanford.edu>Josquin Research Project</a> (and mirrored on <a href=http://kern.humdrum.org/browse?l=jrp>kernScores</a>)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Ano>Ano</a></td>
<td width="20">&nbsp;</td>
<td>Music by Anonymous fifteenth-century composers</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Agr>Agr</a></td>
<td width="20">&nbsp;</td>
<td>Music by Alexander Agricola (<em>c</em>1446&ndash;1506)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Bus>Bus</a></td>
<td width="20">&nbsp;</td>
<td>Music by Antoine Busnoys (<em>c</em>1430&ndash;1492)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Com>Com</a></td>
<td width="20">&nbsp;</td>
<td>Music by Loyset Comp&egrave;re (<em>c</em>1445&ndash;1518)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Duf>Duf</a></td>
<td width="20">&nbsp;</td>
<td>Music by Guillaume Du Fay (<em>c</em>1397&ndash;1474)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Jap>Jap</a></td>
<td width="20">&nbsp;</td>
<td>Music by Jean Japart (<em>c</em>1450&ndash;<em>c</em>1507)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Jos>Jos</a></td>
<td width="20">&nbsp;</td>
<td>Music by Josquin des Prez (<em>c</em>1450&ndash;1521)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Mar>Man</a></td>
<td width="20">&nbsp;</td>
<td>Music by Johannes Martini (<em>c</em>1440&ndash;<em>c</em>1497)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Mou>Mou</a></td>
<td width="20">&nbsp;</td>
<td>Music by Jean Mouton (<em>c</em>1459&ndash;1522)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Obr>Obr</a></td>
<td width="20">&nbsp;</td>
<td>Music by Jacob Obrecht (1458&ndash;1505)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Ock>Ock</a></td>
<td width="20">&nbsp;</td>
<td>Music by Johannes Ockeghem (<em>c</em>1425&ndash;1497)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Ort>Ort</a></td>
<td width="20">&nbsp;</td>
<td>Music by Marbrianus de Orto (<em>c</em>1460&ndash;1529)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Pip>Pip</a></td>
<td width="20">&nbsp;</td>
<td>Music by Matthaeus Pipelare (<em>c</em>1450&ndash;<em>c</em>1550)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Reg>Reg</a></td>
<td width="20">&nbsp;</td>
<td>Music by Johannes Regis (<em>c</em>1425&ndash;<em>c</em>1496)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href=https://github.com/josquin-research-project/Rue>Rue</a></td>
<td width="20">&nbsp;</td>
<td>Music by Pierre de la Rue (<em>c</em>1452&ndash;1518)</td>
</tr>

<tr valign="top" style="background-color:#dddddd">
<td><span style="font-weight:bold; font-family:Arial Rounded MT Bold">mozart</span></td>
<td width="20">&nbsp;</td>
<td>Music by Wolfgang Amadeus Mozart (1756&ndash;1791)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/craigsapp/mozart-piano-sonatas">piano-sonatas</a></span></td>
<td width="20">&nbsp;</td>
<td>17 piano sonatas from <a href=http://kern.humdrum.org/browse?l=mozart/sonatas>kernScores</a></td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/musedata/humdrum-mozart-quartets">quartets</a></span></td>
<td width="20">&nbsp;</td>
<td>String quartets (converted from MuseData) also on <a href=http://kern.humdrum.org/browse?l=mozart/quartets>kernScores</a></td>
</tr>

<tr valign="top" style="background-color:#dddddd">
<td><span style="font-weight:bold; font-family:Arial Rounded MT Bold">scarlatti-d</span></td>
<td width="20">&nbsp;</td>
<td>Music by Domenico Scarlatti (1685&ndash;1757)</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/craigsapp/scarlatti-keyboard-sonatas">piano-sonatas</a></span></td>
<td width="20">&nbsp;</td>
<td>59 keyboard sonatas from <a href=http://kern.humdrum.org/browse?l=scarlatti/sonatas>kernScores</a></td>
</tr>

<tr valign="top" style="background-color:#dddddd">
<td><span style="font-weight:bold; font-family:Arial Rounded MT Bold">songs/harmonized</span></td>
<td width="20">&nbsp;</td>
<td>Collections of songs with accompaniment</td>
</tr>

<tr valign="top">
<td align="right" style="background-color:#eeeeee"><span style="white-space:nowrap; padding-left:10px; margin-right:10px; font-weight:bold; font-family:Arial Rounded MT Bold"><a href="https://github.com/craigsapp/erk-liederschatz">liederschatz</a></span></td>
<td width="20">&nbsp;</td>
<td>Deutscher Liederschatz, edited by Ludwig Erk, also available on <a href=http://kern.humdrum.org/browse?l=/users/craig/songs/erk/liederschatz>kernScores</a></td>
</tr>

</table>


Additional online data
======================

Most of the repertories in this archive can also be found on kernScores
(http://kern.humdrum.org), with mirrors at http://kern.ccarh.org and
http://kernscores.stanford.edu.  When this is the case, a file called
[kern/.kernscores](https://github.com/craigsapp/bach-371-chorales/blob/master/kern/.kernscores) within each submodule will give the kernScores address
for the repertory, such as ```h://371chorales``` for the set of 
371 Bach chorales.

You can access kernScores files from the command line using any of
the Humdrum Extras tools.  For example to download the 371 Bach chorale set
from kernScores, you can use these commands:
```bash
   mkdir kernscore-chorales
   cd kernscore-chorales
   humsplit h://371chorales
```

Entire repertories can also be stored within a single file for convenience, 
such as:
```bash
   humcat -s h://371chorales > 371chorales.krns
```
Most Humdrum Toolkit and Humdrum Extras programs can process these repertory 
files:
```bash
   prange -g Soprano h://371chorales
   humcat -s h://371chorales | census -k
   humcat -s h://371chorales > 371chorales.krns; census -k 371chorales.krns
```


Any individual file on kernScores can be accessed with humextra programs
as well (if you know the full name of the file), by downloading from
the kernScores website directly from the command line:
```bash
   humcat h://371chorales/chor001.krn | less
   keycor h://371chorales/chor001.krn
```

This should produce the same result as running on a local file from
this repository:
```bash
   less bach-js/371chorales/kern/chor001.krn
   keycor bach-js/371chorales/kern/chor001.krn
```

To access [kernScores](http://kern.humdrum.org) files on the command line
with Humdrum Toolkit programs, use the Humdrum Extras *humcat* program:
```bash
   humcat -s h://371chorales | census -k
   humcat h://371chorales/chor001 | census -k
```

The ```-s``` option for *humcat* is needed to keep the files within
separate data segments; otherwise, *humcat* tries to merge separate
files into a single spine stream (and merging will fail if the
spine structure of separate data segments do not match).

For musical data from the [Josquin Research Project](http://josquin.stanford.edu), there are several equivalent methods of downloading from the command line:
```bash
   prange jrp://Jos2721
   prange jrp://Jos2721-La_Bernardina
   prange jrp://Jos2721-La_Bernardina.krn
   prange humdrum://jrp/Jos/Jos2721-La_Bernardina.krn
   prange h://jrp/Jos/Jos2721-La_Bernardina.krn
```
The ```jrp://``` [URI](http://en.wikipedia.org/wiki/URI) form does not
require a complete filename, so files can be downloaded by using only their
JRP catalog number (Jos2721 for the song *La Bernardina*).

The *jrp* URI cannot be used to download an entire composer's works, but this
can be done from the *humdrum* (or *h* for short) URI from kernScores:
```bash
   humcat -s h://jrp/Jos | census -k
```

There are also three useful genre groupings of JRP data which can be
downloaded from the command line (useful when doing genre analysis):
```bash
   cd jrp
   (mkdir Zma; cd Zma; humsplit h://jrp/Zma)  # download all JRP mass sections
   (mkdir Zmo; cd Zmo; humsplit h://jrp/Zmo)  # download all JRP motets
   (mkdir Zso; cd Zso; humsplit h://jrp/Zso)  # download all JRP songs
```


Contributing
============

Encodings of public-domain editions of musical scores can be added
to this repository by Humdrum users.  The preferred method is for the
curator of a repertory to maintain their own repository for the music
on GitHub.  That repository can then be attached to this repository as a
[submodule](http://git-scm.com/book/en/Git-Tools-Submodules).  For those
unable to use GitHub, the repertory submodule can be hosted by the
[humdrum-data](httsp://github.com/humdrum-tools/humdrum-data) repository.

The ideal data organization will include a *kern* subdirectory if
the data is primarily \*\*kern data, or a different subdirectory name
matching the primary data type (such as *dynam* if the data consists
only of dynamic information for a work, etc.).  In addition, a Makefile
with various examples of repertory-specific processing for a submodule's
data is useful.  Most of the current submodules also include the ability
to download PDFs for scans of the reference edition for the repertory.
For example, to download the PDF files for the Beethoven piano sonatas
repertory, type:
```bash
    cd beethoven/piano-sonatas
    make reference-edition
```
This will create the directory ```beethoven/piano-sonatas/reference-edition```
with one PDF for each of the kern files in ```beethoven/piano-sonatas/kern```
(i.e., PDFs segmented by movement).

Use the [371chorales](https://github.com/craigsapp/bach-371-chorales)
and [jrp](https://github.com/josquin-research-project/jrp-scores)
repositories as a template for creating your own encoding repositories.
The [371chorales](https://github.com/craigsapp/bach-371-chorales)
repository is an example of a single-directory collection of music,
and the [jrp](https://github.com/josquin-research-project/jrp-scores)
repository is an example of a more complex multiple directory repository
of scores (one directory for each composer in this case).



