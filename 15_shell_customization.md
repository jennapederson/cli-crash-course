# Customizing Your Shell

## Aliases

Aliases are command shortcuts that you can create for your commonly used commands. You can run the alias command at the command line to see what is currently aliased or to create a new alias for the current session. In order to use aliases across sessions (most common use), you can add them to your bash configuration. Typically, you would put this into the .bashrc file.

```
alias dev='cd ~/Development'
alias clients='cd ~/Development/clients'
alias start-app='mvn clean package jetty:run -Dsome.service.endpoint.url=https://some.service.com/ -DskipTests=true'
alias 612swf='ssh jenna@612softwarefoundry.com'
alias restart-apache='sudo apachectl restart'
```

## Command Prompt

The special bash variable representing the command prompt is PS1. In Nitrous, PS1 is defined in .bashrc as:

```
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\$ "
```
A couple notes:
\u - the current user
\h - the first part of the hostname

parse_git_branch is a function defined in the Nitrous .bashrc as well which figures out which branch you are currently on.

You can implement this yourself with Matthew McCullough's dotfiles: https://github.com/matthewmccullough/dotfiles/blob/master/bash_gitprompt.