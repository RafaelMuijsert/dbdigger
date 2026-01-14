# DBDigger

This code is used to get phpMyAdmin login credentials for webtech groups.

## Install guide
Run `make install` to install the command-line tool.
The tool can be run by executing `dbdigger` in the command line.

## Uninstall guide
Run `make uninstall` to uninstall the command-line tool.

## Usage
Pass the root URLs of the web pages of which you are trying
to obtain credentials to STDIN.

Example usage:

```bash
$ echo 'https://group.project.com' | ./dbdigger.sh 
```
