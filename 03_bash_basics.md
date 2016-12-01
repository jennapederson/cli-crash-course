# Basics of the Bash Shell

## What is a Command Prompt?

The command prompt is a character or set of characters that indicate to the user that the command line is ready for input. It’s quite possible that yours will look different than mine, but quite frequently, it ends in a $ or > symbol.

```
BabyMac:~ jennapederson$
```

When you see instructions here or in other documentation, you will only type the command, omitting the command prompt. For example, when you see this:

```
BabyMac:~ jennapederson$ ls
```

You will only type this:
```
ls
```

## Executing a Command

To execute the command you have typed, press enter.

When it runs, it may (or may not!) print output to the screen. You will know it has completed when the command prompt is displayed again. The command line is then ready for new commands.

```
BabyMac:~ jennapederson$
BabyMac:~ jennapederson$ ls
Geekettes-1750x1750.png  images  README.md  workspace
BabyMac:~ jennapederson$
```

## Breaking Down a Command

A command is made up of different parts: the main command, options, and arguments.

```
BabyMac:~ jennapederson$ command [OPTIONS] [ARG1] […ARGX]
```

For example, the copy command `cp` takes options and two arguments:

```
BabyMac:~ jennapederson$ cp -R source destination
```
- cp is the main command
- -R is an option that indicates copy recursively
- source and destination are both arguments to this command

## Open Your Cloud9 Workspace

Go to your [Cloud9 dashboard](https://c9.io/dashboard.html) and click Open for the cli-crash-course workspace you have already created.

## Man Pages

Now is a good time to talk about man pages. Man pages are reference manuals for commands. They show the allowed formats of a command, its options, and arguments as well as deeper explanations of each.

Try this now:

```
BabyMac:~ jennapederson$ man cp
```

User your up/down arrows or the space bar to navigate through a man page. To exit a man page, press q.

Back: [Getting Started](02_getting_started.md)
Forward: [Basic Commands](04_basic_commands.md)
