## About ##

|            |                           |  
| ---------- | ------------------------- |  
| Title:     | MultiMarkdown v6 Syntax Guide       |  
| Author:    | Fletcher T. Penney       |  
| Date:      | 2017-08-19 |  
| Copyright: | Copyright © 2017 Fletcher T. Penney.    |  
| Version:   | 1.0.0      |  

## Description ##

This is a quick syntax guide to MultiMarkdown version 6.  It replaces the
[previous guide], which was a fork of a [project] by Édouard Brière.

This is a complete rewrite of the content, but more importantly makes it much
easier to update.

The `source` directory consists of a list of directories.  These directories
become the individual sections of the guide.

Inside each section are individual example files.  The examples are pulled in
alphabetical order to create the final HTML file.

It demonstrates *most* features of MMD v6, but not all of the more subtle
advanced features.

## Building ##

`make` will process any changed txt files to create new html files.  It then
runs the make_index script to compile the final HTML.

`make clean` will erase the HTML files, forcing them to be rebuilt with
multimarkdown.

**NOTE**: If you you do this, be sure to use MMD version 6.2.0 or higher.

**NOTE**: Several of the examples had to be adjusted to ensure valid HTML
for both the example text and the result.  These are *not* erased by `make
clean` and should not be changed unless you know what you're doing.


This project makes use of a slightly modified version of Brière's css.

[project]: https://github.com/edouard/human-markdown-reference
[previous guide]: https://github.com/fletcher/human-markdown-reference