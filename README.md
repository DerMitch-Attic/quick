quick
=====

A collection of useful mini-commands which I often need, but can't remember


# Installation

**Important:** Fork this repository. Really. I may change and break things all the times. You have been warned!

```bash
git clone https://github.com/DerMitch/quick.git ~/.quick

# Link to somewhere in your path, preferred your home directory
ln -s ~/.quick/quick ~/.bin/quick

# Or just add it to your path
PATH=$PATH:~/.quick
```

# Usage

Call **quick** without arguments to get a list of all available plugins.

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
