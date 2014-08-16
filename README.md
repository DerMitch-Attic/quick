quick
=====

A collection of useful mini-commands which I often need, but I'm too lazy too type.


# Installation

**Important:** Fork this repository. Really. I may change and break things all the times. You have been warned!

```bash
git clone https://github.com/DerMitch/quick.git ~/.quick

# Link to somewhere in your path, preferred your home directory
ln -s ~/.quick/quick ~/.bin/quick

# Or just add it to your path
PATH=$PATH:~/.quick
```

To enable shell (bash/zsh) completition, add the following line to your .bashrc/.zshrc:

```bash
source ~/.quick/shell_complete.sh
```

# Usage

Call **quick** without arguments to get a list of all available plugins.

# Provided Plugins

Please note that most plugins require [Docker](https://www.docker.com/).

Plugin       | Description
------------ | -------------
ubuntu [image] | Open a shell inside an Ubuntu 14.04 (or other image) docker container
cpan [directory] | Create/Update a local CPAN mirror
http [directory] | Service a local directory.

# Writing plugins

Add a shell script to the plugins/ directory and use the following template.
All files need .sh as extensions. Executable flag is not necessary.
All your code should belong inside a function, sourcing plugins MUST not have side-effects.

```bash
quick_$name() {
	# Your code
}

help_$name() {
	# Print usage and options/configuration variables
}
```
