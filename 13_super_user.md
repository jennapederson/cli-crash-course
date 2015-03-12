# Super user

Super user is also known as the root user. The user name for this user is root.

There are two commands, su and sudo, that allow you to execute commands as a different user, oftentimes the super/root user.

## su

Use the su command to switch users. To do this, you need to know password of the user to which you are switching.

To execute a specific command as a different user:
```
action@cli-crash-course-197957:~$ su kristen -c touch ~kristen/hello_world.sh
```

To execute all commands as a different user:
```
action@cli-crash-course-197957:~$ su kristen
```

To execute commands as the root user:
```
action@cli-crash-course-197957:~$ su
```

su is not used as frequently as sudo because it requires you to know someone else's password. In order to remove access to that other user's account the password would need to be changed.

## sudo

Use the sudo command to do something as the super/root user. It stands for "super user do". Instead of typing in the root user's password, you type in your own password. Sudo access is managed in a special file called sudoers. There is also an audit trail of which sudoer did what with sudo.

To execute a command as the root user:
```
action@cli-crash-course-197957:~$ sudo touch ~kristen/hello_world.sh
```

## A Word of Caution

Both su and sudo can be potentially dangerous. The root user has access to do anything. If I use sudo to delete another user's home directory or even more devastating, the root directory, /, I could cause some big problems. There are often better ways of implementing security without giving away the root user password (for su) or giving someone sudoer access (for sudo) such as using file permissions with groups.

[Crossing the Bounds of Your Computer](12_remote.md)	[Dotfiles](14_dotfiles.md)
