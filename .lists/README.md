# LIST configuration files #

## Recognized parameters ##

| Spine       | Meaning |
| ----------- | ------- |
| `**sound`   | Number of sounding notes in the copied files. If a null token, then the Humdrum Extras notecount tool was not available when the repository was downloaded. |
| `**files`   | Number of files copied to the local directory. |
| `**from`    | The subdirectory in the repository listed in the source reference record above that files were copied from. A null token means the root of repository working directory. |
| `**to`      | The subdirectory in the repository listed in the source reference record above that files were copied from. A null token means the root of target directory. |
| `**prefix`  | Prefix string to add to copied filename (if any). |
| `**suffix`  | Suffix string to add to copied filename (if any). |
| `**filter`  | Copy only files with given PERL/JavaScript regex. |
| `**xfilter` | Exclude any files with the given PERL/JavaScript regex. |
| `**content` | Copy only files that have content that matches the give PERL/JavaScript regex. |
| `**sar`     | sed-like search and replacement for filename (before prefix and suffix are added).  Multiple SAR entries can be given, separated by semicolons (`;`). |

## Downloading LIST datasets ##

To download a particular dataset, such as for `LIST-sonatas.tsv`,
type `make sonatas` in the base directory of this repository.  Running
the `make` command will download Humdrum files from the `LIST.tsv`
file (complete set).

## Updating downloaded files ##

If you want to make sure that you have the most recent versions of
any dataset, first type:

```bash
make clean
```

And then type the make command to install the desired data set, such as `make`
to download the complete dataset, or `make sonatas` to download the Classical
piano sonata dataset.



