# Dotfiles

Dotfiles are any files that begin with a period. These files are typically configuration for your shell and other command line tools. The dotfiles used by the shell are sourced (executed) when you login. By default, dotfiles are hidden by most operating systems in a GUI like Finder or Windows Explorer.

To see them at the command line using `ls`, you need to add the `-a` option:
```
BabyMac:~ jennapederson$ ls -a
.   .bash_history  .bashrc  .gemrc      hello_world.sh        .pam_environment  README.md  .tmux.conf  .viminfo
..  .bash_profile  .cache   .gitconfig  .nitrousboxrc.sample  .parts            .ssh       .VERSION    workspace
```

## Dotfile Resources

GitHub has a great resource of other people's dotfiles: https://dotfiles.github.io/.  

And you can find mine, right here: https://github.com/jennapederson/dotfiles.

Back: [Super User](13_super_user.md)
Forward: [Customizing Your Shell](15_shell_customization.md)
