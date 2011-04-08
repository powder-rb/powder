powder manages [Pow](http://pow.cx/)

# Install #

    gem install powder

# Usage #

    $ pow
    => link the current dir_name to ~/.pow/dir_name

    $ pow link bacon
    => link the current dir to ~/.pow/bacon

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
