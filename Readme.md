powder manages [pow](http://pow.cx/)

# Install #

    gem install powder

# Usage #

    $ powder
    => Link the current dir_name to ~/.pow/dir-name
    # if the dir_name has underscores in, powder changes them to hyphens

    $ powder link bacon
    => Link the current dir to ~/.pow/bacon
    # If the current directory doesn't look like an app that can be powed
    # by pow it will offer to download a basic config.ru for Rails 2

    $ powder list
    => List all the current apps linked in ~/.pow
    # aliased as powder -l

    $ powder restart 
    => Restart the current app
    # aliased as powder -r
    # aliased as powder -r or r

    $ powder remove
    => Unlink current_dir

    $ powder remove bacon
    => Unlink bacon

    $ powder open
    => Opens the pow link in a browser
    # aliased as powder -o

    $ powder open bacon
    => Opens http://bacon.dev in a browser
    # if you have set up alternative top level domains in .powconfig,
    # then the first listed domain will be opened.
    
    $ powder log
    => Tails the pow log.
    # Not the application log, but the pow log, available at
    # ~/Library/Logs/Pow/apps/app-name
    
    $ powder version
    => Returns the current powder version
    # aliased as powder -v

    $ powder install
    => Installs pow server 
    # (I know, "curl get.pow.cx | sh" isn't hard, but this is _even_ easier)

    $ powder uninstall
    => Uninstalls pow server

# Contributors #

Built by [rodreegez](https://github.com/Rodreegez) and [philnash](https://github.com/philnash).

With contributions from:

  * [franciscoj](https://github.com/franciscoj) 
  * [cjkihlbom](https://github.com/cjkihlbom) 
  * [pengwynn](https://github.com/pengwynn).
  * [jmccartie](https://github.com/jmccartie)
  * [fschwahn](https://github.com/fschwahn)
  * [bob-p](https://github.com/bob-p)


## Copyright ##

Copyright (c) 2011 Adam Rogers and Phil Nash. See LICENSE for details.
