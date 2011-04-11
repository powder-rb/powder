powder manages [pow](http://pow.cx/)

# Install #

    gem install powder

# Usage #

    $ powder
    => link the current dir_name to ~/.pow/dir-name
    # if the dir_name has underscores in, powder changes them to hyphens

    $ powder link bacon
    => link the current dir to ~/.pow/bacon
    # If the current directory doesn't look like an app that can be powed
    # by powder it will offer to download a basic config.ru for Rails 2

    $ powder list
    => list all the current apps linked in ~/.powder
    # aliased as powder -l

    $ powder restart 
    => restart the current app
    # aliased as powder -r

    $ powder remove
    => unlink current_dir

    $ powder remove bacon
    => unlink bacon

    $ powder open
    => opens the pow link in a browser
    # aliased as powder -o

    $ powder open bacon
    => opens http://bacon.dev in a browser

    $ powder install
    => installs pow server 
    # (I know, "curl get.pow.cx | sh" isn't hard, but this is _even_ easier)

    $ powder uninstall
    => uninstalls pow server


## Copyright ##

Copyright (c) 2011 Adam Rogers and Phil Nash. See LICENSE for details.
