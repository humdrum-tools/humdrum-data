humdrum-data
============

Humdrum Data without tools.


Download
========

This is a repository of musical Scores in the Humdrum file format.  The repository also contains submodules to various collections of music on GitHub in the Humdrum file format.  To download the Humdrum data repository using git, use this command:

```bash
    git clone --recursive https://github.com/humdrum-tools/humdrum-data
```

The ZIP file link no the right-hand side of the github page will currently
not download submodules (GitHub may add this functionality in the future).
To download by ZIP files, you will have to get the ZIP file for each included
repository separately.


Additional online data
======================

Additional Humdrum data can be found online at kernScores: http://kern.humdrum.org, with mirrors at http://kern.ccarh.org and http://kernscores.stanford.edu.

You can also access the kernScores files from the command line using any of the Humdrum Extras tools.  For example to download the 371 Bach chorales from kernScores, you could type:

```bash
   mkdir kernscore-chorales
   cd kernscore-chorales
   humsplit h://371chorales
```

Any single file can be accessed with humextra programs as well:

```bash
   keycor h://371chorales/chor001.krn
```

This should produce the same result as running on a local file from this repository:
 

```bash
   keycor bach-js/kern/chor001.krn
```

The files in kernscore-chorales should be identical (or nearly so) to the files within the directory/folder bach-js/371chorales.

To access kernScores files on the command line with Humdrum Toolkit programs, use the Humdrum Extras <em>humcat</em> program: 

```bash
   humcat -s h://371chorales | census -k
```


