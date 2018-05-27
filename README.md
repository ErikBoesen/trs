# trs
CLI trash management for systems without one. Also fully compatible with systems with trashes.

## Why?
> Perhaps a better question is, why not?

Because my home server's Linux setup lacks a trash and I sometimes feel uncomfortable straight-up `rm`ming things.

Also, I'm bored on this train.

## Installation
* Clone and `cd` into the proper directory:

        git clone https://github.com/ErikBoesen/trs && cd trs

* Copy to executable path:

        cp trs.bash /usr/local/bin/trs

    If you don't have access to the `/usr/local/bin` directory, you can put the executable binary anywhere else you like and add that directory to your `$PATH`.

## Usage
To move files/folders to trash:

    trs bad-stuff.txt blurryphoto.jpg uselessfolder

Empty trash:

    trs -e

or

    trs --empty

## Author
This software was created by [Erik Boesen](https://github.com/ErikBoesen).

## Licensing
This software is licensed under the [MIT license](LICENSE).
