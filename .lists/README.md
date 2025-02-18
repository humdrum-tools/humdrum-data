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
| `**content` | Only copy files that have content matching the given PERL/JavaScript regex. |
| `**sar`     | sed-like search and replacement for filename (before prefix and suffix are added).  Multiple SAR entries can be given, separated by semicolons (`;`). |

## Downloading LIST datasets ##

To download a particular dataset, such as for `LIST-sonatas.txt`,
type `make sonatas` in the base directory of this repository.  Running
the `make` command will download Humdrum files from the `LIST.txt`
file (complete set).

## Updating downloaded files ##

If you want to make sure that you have the most recent versions of
any dataset, you can run `make check-update` to check for any updates
of the online GitHub repositories since you last downloaded them.

To remove all local copies of online repsositories in
preparation for updating, first type:

```bash
make clean
```

And then type the make command to install the desired dataset(2),
such as `make` to download the complete dataset, or `make sonatas`
to download the Classical piano sonata dataset.

This process will not remove any of your locally created files, and after 
running `make` to redownload the reposities, they will be placed back into the
original directory structure in which your local files may reside.



