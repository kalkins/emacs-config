# My Emacs config

This repo contains my configuration files for emacs. It is written in org mode using code blocks that get executed av launch. A pretty html version of the config can be found [here](http://sindrestephansen.com/emacs-config).

Everyone is free to use this however they want, but you'll probably want to change some of the settings before actually using it.


## Setup

A setup script, setup.el, is included in the repo. This installs use-package, appends a line to .emacs telling it to load the config at launch, and then loads the config to get everything installed right away. You should restart emacs after the setup.

Only run the setup once, or you'll get duplicate lines in .emacs, which will make the launch process unnecessarily long.

The command to run the setup from withing emacs is

```emacs-lisp
M-x load-file RET /path-to-repo/setup.el
```

If you are unfamiliar with emacs command syntax, that means press Alt and x together, write load-file, hit return/enter, write the path to where you downloaded this repo, add "setup.el" to that, and hit enter/return.

You can also execute it from the command line with

```sh
emacs -l /path-to-repo/setup.el
```