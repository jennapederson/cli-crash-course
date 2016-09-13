# Permissions

Files and directories have different levels of permissions which indicate who can read them, write to them, or even execute them.

## Permission Levels
- owner - these permissions apply to the user who owns the file
- group - these permissions apply to the group that owns the file
- other - these apply to everyone else

## Permissions
- read - read the contents of the file
- write - write or modify the file/directory
- execute - execute the file or view the contents of the directory

Try this now:
```
jennapederson:~/workspace $ ls -l
total 8
-rw-rw-r-- 1 ubuntu ubuntu 699 Jul  1 13:37 README.md
-rw-r--r-- 1 ubuntu ubuntu  32 Sep 13 21:44 hello_world.sh
```

Our permissions are shown in the first column of characters in this format:

```
<special flag><user rwx><group rwx><other rwx>
```

Right now, the `hello_world.sh` file is not executable. We're going to fix that.

```
jennapederson:~/workspace $ ./hello_world.sh
bash: ./hello_world.sh: Permission denied
```

## To Change the Permissions

To make the hello_world.sh file executable, we will add execute permissions to the user.

Try this now:
```
jennapederson:~/workspace $ chmod u+x hello_world.sh
jennapederson:~/workspace $ ls -l
total 8
-rw-rw-r-- 1 ubuntu ubuntu 699 Jul  1 13:37 README.md
-rwxr--r-- 1 ubuntu ubuntu  32 Sep 13 21:44 hello_world.sh*
```

Note that the x bit has been added to the user level, indicated by `u+x`. If we wanted to remove group write, we would use `g-w`. If we wanted to remove read for other, we would use `o-r`.

- u, g, o for user, group, other respectively
- + or - to add or remove
- r, w, x for read, write, execute respectively

The very first bit, the special flag, usually will indicate whether it is directory (d), regular file (-), or a link (l).

Try this now [ex. 1](example1):
```
jennapederson:~/workspace $ ./hello_world.sh
Hello World!
```

Back: [How to Not Hate Vim](05_vim.md)
Forward: [Reading User Input](08_read_user_input.md)
