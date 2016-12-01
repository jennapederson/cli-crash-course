# How to Not Hate Vim

You will eventually need to create or edit a file and you won’t have access to a graphical editor like your IDE or Sublime Text. The most common text editor that is installed at the command line is Vi or Vim. Vim is the “improved” version of Vi and should be available to you.

Vim is an intricate beast. Here we will cover the basics to get you in and out of Vim, find something within the file, and make a couple of changes to a file.

## Vim Has Two Modes
- Command mode - allows you to execute commands on the file
- Insert mode - allows you to type into the file

When you open the editor, you will be in Command mode. To get back into Command mode, hit your `ESC` key. When you are in Insert mode, you will see this at the bottom of the editor:

```
-- INSERT --
```

## Basic Vim Commands
- `ESC` - change back to Command mode
- `i` - insert text
- `a` - append text
- `x` - delete character at cursor
- `d` - delete line at cursor
- `u` - undo last change
- `/your_search_term` - to search for your_search_term
- `n` - search again for your_search_term
- `yy` - yank a line of text (copy the line)
- `yw` - yank a word of text (copy the word)
- `p` - paste the yanked text
- `:q` - quit
- `:q!` - quit without saving changes
- `:w` - write (save)
- `:x`, `:wq` - write and quit (save and quit)

Try this now:

```
BabyMac:~ jennapederson$ vim hello_world.sh
```

Type the following into the file (we will be using this later):
```
#!/bin/bash
echo "Hello World!"
```

## What is `#!/bin/bash` and When Do I Need It?

The `#!/bin/bash` is commonly referred to as “Hash bang bin bash” or even “She-bang”. The file type suffix is merely a convention. An executable can be any type of script - sh, bash, perl, php, ruby, python, etc. This line of code indicates which shell to use.

Back: [Basic Commands](04_basic_commands.md)
Forward: [Permissions](06_permissions.md)
