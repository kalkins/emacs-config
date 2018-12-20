

# My Emacs config

This repo contains my configuration file for emacs.
It is written in org mode using code blocks that get
executed at launch. A pretty html version of the
config can be found [here](http://sindrestephansen.com/emacs-config).

Everyone is free to use this however they want, but
you'll probably want to change some of the settings
before actually using it.


## Setup

A setup script, setup.el, is included in the repo.
This installs use-package, appends a line to .emacs
telling it to load the config at launch, and then
loads the config to get everything installed right
away. You should restart emacs after the setup.

Only run the setup once, or you'll get duplicate
lines in .emacs, which will make the launch process
unnecessarily long.

To run the setup, execute the following command in
a terminal:

    emacs -q -l /path-to-repo/setup.el

During the setup it will ask for the path to the config.org
file, in case you have it somewhere else.

This starts emacs without an initilization script,
and then loads the setup script.
