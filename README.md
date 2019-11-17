# gior-base

This is the base of `gior` for you to easily follow along the [how to build htmlwidgets blogpost](https://blog.john-coene.com/posts/2018-01-01-widget/) and build the htmlwidget for [gio.js](http://giojs.org/index.html) yourself!

1. [Get Started](#get-started)
2. [Historic](#historic)
3. [Changes](#changes)
4. [Data](#data)
5. [Package](#package)

## Get Started

Clone this [repository](https://github.com/JohnCoene/base-gior) with `git clone https://github.com/JohnCoene/base-gior.git`, or, from [RStudio](https://www.rstudio.com/):

1. go to `File`
2. Click on `New Project`
3. Select `Version Control`
4. Then select `Git`
5. And paste the URL (`https://github.com/JohnCoene/base-gior.git`) under `Repository URL`
6. Finally, click `Create Project`.

## Historic

Here are the only functions that were ran:

1. `devtools::create("gior")`
2. `htmlwiidgets::scaffoldWidget("gior")`

Essentially creating a package with `devtools` and scaffolding the htmlwidget from the root of the package. You should be familiar with the first function. The second function essentially builds the following:

```
R/
| gior.R

inst/
|-- htmlwidgets/
|   |-- gior.js
|   |-- gior.yaml
```

## Changes

Simply for convenience and for one to quickly get on with building the widget, some files were already edited or added.

### DESCRIPTION

Edited some meta information that you should change and added necessary `Imports`:

1. `htmlwidgets`
2. `shiny`
3. `jsonlite`

### YML

The `gior.yml` file located in the `inst` folder was edited from:

```yml
# (uncomment to add a dependency)
# dependencies:
#  - name:
#    version:
#    src:
#    script:
#    stylesheet:
```

to

```yml
dependencies:
 - name: three
   version: 97
   src: htmlwidgets/lib/three
   script: three.min.js
 - name: gio
   version: 2.0
   src: htmlwidgets/lib/gio-2.0
   script: gio.min.js
```

*The [blogpost](https://john-coene.com/post/how-to-build-htmlwidgets/) explains what this file does.*

### lib

The `lib` directory (and its sub directories); we essentially added the dependencies (that are referred to in the *YML section* above)

```
R/
| gior.R

inst/
|-- htmlwidgets/
|   |-- gior.js
|   |-- gior.yaml
|   |-- lib/
|   |   |-- gio-2.0/
|   |   |   |-- gio.min.js
|   |   |-- three/
|   |   |   |-- three.min.js
```

## Data

The package also includes random data for you to test your package which can be loaded with `data("country_data")`.

## Package

This is a package, remember that to see changes reflected you will have to run:

1. `devtools::document()`
2. Then`devtools::install()` or `CTRL/CMD + SHIFT + B` from RStudio.

**Note that, as is, the package works but does not pass `R CMD Check`.**

