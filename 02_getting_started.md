# Let's Get Started

## Learn By Doing

Don’t copy and paste. TYPE IT IN! Repetition is how you will learn these commands.

## A Word of Caution

One of the great benefits of the command line is that you have the power. Understand the command that you are typing before pressing enter.

Don’t worry! It’s ok to screw up. It happens to the best of us and it WILL happen. It’s always a great way to learn. We’ll talk about some tips and tricks to help prevent bad things from happening.

_Note:_ All examples here will be prefaced with “Try this now:”. We'll break for a few minutes to try this on our own. Ask questions of the TAs if you run into roadblocks.

## What is a Shell?

A shell is an interface for accessing the underlying commands of an operating system.

This workshop focuses on the [Bash](http://www.gnu.org/software/bash/manual/html_node/index.html) shell.

On Nitrous.io, you will already be set up to use the Bash shell.

On a Mac, you should have already looked at the setup and made sure you are using the Bash shell. If not, go there now.

## What is ~, ., and ..?

There are a few characters we need to know before we go into more detail. These represent shortcuts to locations.

### The tilde: ~

The tilde is a shortcut representing your home directory. If you use it in a command, it will expand the path for you automatically. For example: ~/is_cool would expand to /Users/jennapederson/is_cool. 

### A single period: .

The single period represents your current working directory. You will commonly see this when executing a script from the current working directory. For example: ./script.sh. We’ll cover this in more detail in a future section.

### A double period: ..

The double period represents the parent directory. You’ll use this momentarily when changing directories. For example: cd ../somewhere_else_in_the_parent_directory

Back: [Intro](01_intro.md)	
Forward: [Basics of the Bash Shell](03_bash_basics.md)
