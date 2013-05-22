powder manages [pow](http://pow.cx/)

# Install #

    gem install powder

# Usage #


### Linking apps in Pow ###

    powder will attempt to read .powder, which names a default symlink for the current project

    $ powder [-h|help]
    => Display usage information
    # Lists name and brief descriptions of the tasks available

    $ powder link
    => Link the current dir to ~/.pow/<current_directory>

    $ powder link [bacon]
    => Link the current dir to ~/.pow/bacon
    => Create .powder, contents bacon

    $ powder link [bacon] --no-create
    => Link the current dir to ~/.pow/bacon

    $ powder link [bacon] --force
    => Remove the current pow symlink, and .powder
    => Link the current dir to ~/.pow/bacon
    => Create .powder, contents bacon

    # For both forms of link, if the current directory doesn't
    # look like an app that can be powed it will offer to download
    # a basic config.ru for Rails 2

    $ powder default
    => Link the current dir to ~/.pow/default
    # Serve this directory for all unhandled domains

    $ powder unlink
    => Unlink current_dir or the symlink defined in .powder

    $ powder unlink bacon
    => Unlink bacon

    $ powder cleanup
    => remove all invalid symbolic links

### Working with Pow ###

    $ powder applog
    => tail the log of the current app

    $ powder config
    => Get Pow's current configuration information

    $ powder list
    => List all the current apps linked in ~/.pow
    # aliased as powder -l

    $ powder log
    => Tails the pow log.
    # Not the application log, but the pow log, available at
    # ~/Library/Logs/Pow/apps/#{app-directory}.log

    $ powder debug
    => Opens a debug shell with your application environment
    
    $ powder open
    => Opens the pow link in a browser
    # aliased as powder -o

    $ powder open --xip
    => Opens the xip.io link in a browser
    # aliased as powder -o -x

    $ powder open [bacon]
    => Opens http://bacon.dev in a browser
    # if you have set up alternative top level domains in .powconfig,
    # then the first listed domain will be opened.

    $ powder open --browser Safari
    => Opens the pow link in a specific browser (in this case, Safari)
    # Also aliased as -b

    $ powder open -b 'Google Chrome'
    => Opens the pow link with browsers with more than one word

    # Should also works with all the other 'open' options:
    $ powder open bacon -b Safari
    $ powder open --xip -b Firefox
    $ powder -o -x -b 'Google Chrome'

    $ powder restart
    => Restart the current app
    # aliased as powder -r

    $ powder always_restart
    => Always restart the current app
    # aliased as powder -a

    $ powder no_restarts
    =>  don't do any automatic restarting of the current app

    $ powder status
    => Get Pow's current status information

    $ powder version
    => Returns the current powder version
    # aliased as powder -v

    $ powder env
    => Displays your current custom pow environment variables
    # Pow reads environment varialbles from .powenv

    $ powder env_reset
    => Deletes your .powenv, removing all custom environment variables.

    $ powder env BACON chunky
    => Pass an arbitrary environment variable to pow, eg, ENV["BACON"] = "chunky"
    # Remove an ENV by passing in no value, eg: powder env BACON
    # If you already have a .gitignore, the newly created .powenv will also be ignored automatically.

    $ powder [production|development|test]
    => Run your Rails app as Production
    # aliased as powder [prod|dev]
    # This is a wrapper for powder env RAILS_ENV ...

    
### Install and uninstall Pow ###

    $ powder install
    => Installs pow server
    # (I know, "curl get.pow.cx | sh" isn't hard, but this is _even_ easier)

    $ powder uninstall
    => Uninstalls pow server

    $ powder update
    => Updates pow server
    # Really this is just an alias to powder install, but it feels more natural
    # this way.

### Enable and Disable Pow ###

    $ powder up
    => Enable Pow
	# aliased as powder start
	
    $ powder down
    => Disable Pow
	# aliased as powder stop

# Contributors #

Built by [rodreegez](https://github.com/Rodreegez) and [philnash](https://github.com/philnash).

Massive thanks to all our great
[contributors](https://github.com/Rodreegez/powder/contributors)

# Related tools #

* [Powser](https://github.com/phil-monroe/powser) - Powder for your browser!

## Copyright ##

Copyright (c) 2011 Adam Rogers and Phil Nash. See LICENSE for details.

Lovingly supported by [Mint Digital](http://mintdigital.com)
