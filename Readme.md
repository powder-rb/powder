Powder manages [Pow](http://pow.cx/)

# Install #

    gem install powder

# Usage #

    $ pow
    => link the current dir_name to ~/.pow/dir_name
    # if the dir_name has underscores in, powder changes them to hyphens

    $ pow link bacon
    => link the current dir to ~/.pow/bacon
    # If the current directory doesn't look like an app that can be powered
    # by pow it will offer to download a basic config.ru for Rails 2

    $ pow list
    => list all the current apps linked in ~/.pow
    # aliased as pow -l

    $ pow restart 
    => restart the current app
    # aliased as pow -r

    $ pow remove
    => unlink current_dir

    $ pow remove bacon
    => unlink bacon
    
    $ pow open
    => opens the pow link in a browser
    # aliased as pow -o
    
    $ pow open bacon
    => opens http://bacon.dev in a browser

    $ pow install
    => installs pow server (I know, "curl get.pow.cx | sh" isn't hard, but this is _even_ easier)
    
    $ pow uninstall
    => uninstalls pow server
    
    
## Copyright ##

Copyright (c) 2011 Adam Rogers and Phil Nash. See LICENSE for details.
