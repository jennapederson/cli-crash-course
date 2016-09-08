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
total 3020
-rw-rw-r-- 1 action action 3065895 Feb 28 20:20 Geekettes-1750x1750.png
-rw-rw-r-- 1 action action      51 Mar  2 04:17 hello_world.sh
drwxrwxr-x 2 action action    4096 Feb 28 20:25 images
-rw-r--r-- 1 action action    2290 Feb 21 18:11 README.md
-rw-rw-r-- 1 action action      40 Mar  1 20:03 vim_example.txt
drwxr-xr-x 2 action action    4096 Feb 21 18:11 workspace
```

Our permissions are shown in the first column of characters in this format:

```
<special flag><user rwx><group rwx><other rwx>
```

## To Change the Permissions

To make the hello_world.sh file executable, we will add execute permissions to the user.

Try this now:
```
jennapederson:~/workspace $ chmod u+x hello_world.sh
jennapederson:~/workspace $ ls -l
-rwxrw-r-- 1 action action      51 Mar  2 04:17 hello_world.sh
```

Note that the x bit has been added to the user level, indicated by ‘u+x’. If we wanted to remove group write, we would use ‘g-w’. If we wanted to remove read for other, we would use ‘o-r’.

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
Forward: [Environment](07_environment.md)
