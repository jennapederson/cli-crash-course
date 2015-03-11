# Basics of the Bash Shell

## What is a Command Prompt?

The command prompt is a character or set of characters that indicate to the user that the command line is ready for input. It’s quite possible that yours will look different than mine, but quite frequently, it ends in a $ or > symbol. On Nitrous.io, it’s a $.

```
action@cli-crash-course-197957:~$
```

When you see instructions here or in other documentation, you will only type the command, omitting the command prompt. For example, when you see this:

```
action@cli-crash-course-197957:~$ ls
```

You will only type this:
```
ls
```

## Executing a Command

To execute the command you have typed, press enter.

When it runs, it may (or may not!) print output to the screen. You will know it has completed when the command prompt is displayed again. The command line is then ready for new commands.

```
action@cli-crash-course-197957:~$
action@cli-crash-course-197957:~$ ls
Geekettes-1750x1750.png  images  README.md  workspace
action@cli-crash-course-197957:~$
```

## Breaking Down a Command

A command is made up of different parts: the main command, options, and arguments.

```
action@cli-crash-course-197957:~$ command [OPTIONS] [ARG1] […ARGX]
```

For example, the copy command takes options and two arguments:

```
action@cli-crash-course-197957:~$ cp -R source destination
```
- cp is the main command
- -R is an option that indicates copy recursively
- source and destination are both arguments to this command

## Man Pages

Now is a good time to talk about man pages. Man pages are reference manuals for commands. They show the allowed formats of a command, its options, and arguments as well as deeper explanations of each.

Try this now:

```
action@cli-crash-course-197957:~$ man cp
```

User your up/down arrows or the space bar to navigate through a man page. To exit a man page, press q.

## What is ~, ., and ..?

There are a few characters we need to know before we go into detail.

### The tilde: ~

The tilde is a shortcut representing your home directory. If you use it in a command, it will expand the path for you automatically. For example: ~/is_cool would expand to /Users/jennapederson/is_cool. 

### A single period: .

The single period represents your current working directory. You will commonly see this when executing a script from the current working directory. For example: ./script.sh. We’ll cover this in more detail in a future section.

### A double period: ..

The double period represents the parent directory. You’ll use this momentarily when changing directories. For example: cd ../somewhere_else_in_the_parent_directory
