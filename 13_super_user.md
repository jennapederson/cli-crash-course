# Super user

Super user is also known as the root user. The user name for this user is root.

There are two commands, su and sudo, that allow you to execute commands as a different user, oftentimes the super/root user.

## su

Use the su command to switch users. To do this, you need to know password of the user to which you are switching.

To execute a specific command as a different user:
```
BabyMac:~ jennapederson$ su postgres -c psql my_database
```

To execute all commands as a different user:
```
BabyMac:~ jennapederson$ su postgres
```

To execute commands as the root user:
```
BabyMac:~ jennapederson$ su
```

su is not used as frequently as sudo because it requires you to *know someone else's password*. In order to restrict/prevent access after a password has been shared, the password would need to be changed.

## sudo

Use the sudo command to do something as a different user. It stands for "super user do". Instead of typing in the user's password, you type in your own password. Sudo access is managed in a special file called sudoers. There is also an audit trail of which sudoer did what with sudo. Often it is used to execute commands as the root user.

To execute a command as the postgres user:
```
BabyMac:~ jennapederson$ sudo -u postgres psql my_database
```

To execute a command as the root user:
```
BabyMac:~ jennapederson$ sudo usermod -a -G developers jennapederson
```

## A Word of Caution

Both su and sudo can be potentially dangerous. The root user has access to do anything. If I use sudo to delete another user's home directory or even more devastating, the root directory, /, I could cause some big problems. There are often better ways of implementing security without giving away the root user password (for su) or giving someone sudoer access (for sudo) such as using file permissions with groups.

Back: [Crossing the Bounds of Your Computer](12_remote.md)
Forward: [Dotfiles](14_dotfiles.md)
