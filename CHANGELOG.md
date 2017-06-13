### 0.3.1 / 2017-06-13 ###

* 1 minor change

  * Fixes the message `Expected string default value for '--browser'` that was
    output when using `powder open`
    ([commit](https://github.com/powder-rb/powder/commit/b8bf956f64c2451d8abafc7480f17a15050aa6d3))

### 0.3.0 / 2014-10-29 ###

* 1 minor change

  * Support for OS X Yosemite. Powder reflects the changes in Pow.
    Pow no longer uses the ipfw firewall, which was deprecated in OS X 10.9
    and removed in 10.10.

### 0.2.2 / 2014-10-22 ###

* 1 minor change

  * Clean exit from log commands
  ([commit](https://github.com/rodreegez/powder/commit/dd99b30352ddb7acb78918c02d42794fabbc6355))

### 0.2.1 / 2014-02-06 ###

* 3 minor changes

  * Expands the 'Pow is not installed' message
  ([commit](https://github.com/rodreegez/powder/commit/64b2e63e54b3cf0e2c49332a38929c6050b03088))

  * Fixes Readme typo
  ([commit](https://github.com/rodreegez/powder/commit/2d5decd0cc2d5af1d4f4fac606a385aa318f68fb))

  * Updates gist URLs
  ([commit](https://github.com/rodreegez/powder/commit/96af4fae93bd35a47a6cf0baa99f85aa739d0835))

### 0.2.0 / 2013-03-12 ###

* 7 minor changes

	* fix debug command: rdebug connection errors
	([commit](https://github.com/Rodreegez/powder/commit/3ea0a1bc68bd9517e5673cc64d8bf25f41a5e2de))

	* fix debug command: prepend newline to rdebug.rb require
	([commit](https://github.com/Rodreegez/powder/commit/cd2e72524c3d91fcddc9b4a5b5420757c959f411))

	* adds 2 aliases: powder up(start) & powder down(stop)
	([commit](https://github.com/Rodreegez/powder/commit/54cdee5f6f2832d118995f28f28f4a03048c2ae6))

	* adds open command
	([commit](https://github.com/Rodreegez/powder/commit/542df46b2fc08b1784280bac0de02d7e662c35c3))

	* Fixed 'powder list' to display proxy ports.
	([commit](https://github.com/Rodreegez/powder/commit/804b78b844b73c2349a151e6df7f534a7d98c379))

	* Pow config and status tasks to use localhost:20559
	([commit](https://github.com/Rodreegez/powder/commit/a2395157e30863af9d8d856a6dbb97b851d445b4))

	* Manage Pow environment with powder
	([commit](https://github.com/Rodreegez/powder/commit/5b60045127dc72c1fb3b663a97eb4f5e238d4042))

### 0.1.8 / 2012-06-09 ###

* 5 minor changes

	* Added support for opening app with appname.x.x.x.x.xip.io
	([commit](https://github.com/Rodreegez/powder/commit/8d2b5641cc79d238edf19350fc74fdac1ad3221d))

	* Support port mapping in pow 0.4
	([commit](https://github.com/Rodreegez/powder/commit/d079999fd9b08237835c1c4b373067ad87b19cc3))

	* add respawn command
	([commit](https://github.com/rodreegez/powder/commit/e7da3776233d1062335dd5e5d7ee15a3a9e7de0a))

	* Fix typo in message for generating basic config.ru in legacy apps
	([commit](https://github.com/rodreegez/powder/commit/2dd3de86d41d0df2b2b1444e9f6526916360fca5))

	* add a man page
	([commit](https://github.com/rodreegez/powder/commit/64e6a0cc38184a8ac0dc80d95947d185f2bdd432))

### 0.1.7 / 2011-11-02 ###

* 1 minor change

    * adds proper support for alt names
      ([commit](https://github.com/Rodreegez/powder/commit/4b850b1dbb446f7d0c3a643d4cc7be99eebd417b))
    * adds not_restarts command
      ([commit](https://github.com/Rodreegez/powder/commit/9371ccdf822a83db7f1fded365d01bd2c613aed3))
    * adds always_restart command
      ([commit](https://github.com/Rodreegez/powder/commit/45bd64180930353ef6c45626ccae150091374828))
    * pow down properly unloads pow processes
      ([commit](https://github.com/Rodreegez/powder/commit/a6373e73c746587eb1ae23aaa1a26fe331274e6d))
    * adds host/unhost for dealing with no network
      ([commit](https://github.com/Rodreegez/powder/commit/547c3d1e2fbc155fea3c162a373fed017a739107))
    * Don't break config/status when pow is down
      ([commit](https://github.com/Rodreegez/powder/commit/c3aa98943c51079e2e8a1dc0a983efe76e2964c7))

### 0.1.5 / 2011-06-30 ###

* 4 minor changes

    * Expand path to ~/.powconfig before reading it
      ([commit](https://github.com/Rodreegez/powder/commit/58ec48e4f369ea72e76c15900e7ec8f0c6b0bbf1))
    * Fix generating config.ru
      ([commit](https://github.com/Rodreegez/powder/commit/f65d3f1f897a36d18ea3ea54fa39627c8d5fcee6))
    * Add config and status commands
      ([commit](https://github.com/Rodreegez/powder/commit/9f7ec926a9b502d2fe546c9f1b1d396477a3cae4))

### 0.1.4 / 2011-05-26 ###

* 2 minor change

  * Fixes log command: the pow log (~/Library/Logs/Pow/apps/app-name.log) is
    only created as the name of the directory, regardless of the name of the
    symlink added in .pow (issue 23)
    ([commit](https://github.com/Rodreegez/powder/commit/12fe024cc6768439d1555d61d770f660bfaf2d15))
  * Supports Radiant apps (issue 21)
    ([commit](https://github.com/Rodreegez/powder/commit/5854f32ca0b1106fefad8eb6b7a0e7d2c91e67d3))

### 0.1.3 / 2011-05-20 ###

* 2 minor changes

  * add up and down commands
    ([commit](https://github.com/Rodreegez/powder/commit/e8775c166da40fad16d55df0022a61fd5d5af69b))
  * add applog command
    ([commit](https://github.com/Rodreegez/powder/commit/36d8e04aea2eac618611eaffe78ce8eb55eccc51))

### 0.1.2 / 2011-04-14 ###

* 6 minor changes

  * add log command
    ([commit](https://github.com/Rodreegez/powder/commit/140ef1fef456e3cbe266a2df61b03f3e9c403aeb))
  * fix error when calling remove on a pow that does not exist
    ([commit](https://github.com/Rodreegez/powder/commit/948f7251153afaab7c881b312b094d9843919dcb))
  * properly recognise rails 2 apps and display note accordingly
    ([commit](https://github.com/Rodreegez/powder/commit/0445eb652ec824a7f84d12567539a7c2515341a2))
  * bump dependency on Thor
    ([commit](https://github.com/Rodreegez/powder/commit/493a8f84c27b94fcd24dc84168a47a7c399a9ba1))
  * improve how we determin home dir
    ([commit](https://github.com/Rodreegez/powder/commit/b2e70ca790420a06c21a7f4fc466c167c65fb173))
  * adds version command
    ([commit](https://github.com/Rodreegez/powder/commit/3bb995e2ce5ee2f62735b681b2c15418438f2df4))

### 0.1.1 / 2011-04-11 ###

* 1 minor change

  * We won't try reading ~/.powconfig if it doesn't exist

### 0.1.0 / 2011-04-11 ###

* 1 Major change

  * The command has changed from pow to powder to allow pow to use the command
  ([issue](https://github.com/Rodreegez/powder/issues/5))

* 1 minor change

  * open and link now honour domains specified in .powconfig

### 0.0.4 / 2011-04-08 ###

* Early release with link, list, restart, remove, open, install and uninstall commands
