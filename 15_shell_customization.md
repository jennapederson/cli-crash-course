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

The special bash variable representing the command prompt is PS1. In Cloud9, PS1 is defined in .bashrc as:

```
export PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]${C9_USER}\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)") $"
```
A couple notes:
\u - the current user
\h - the first part of the hostname

TODO: __git_ps1 is a function defined in the Cloud9 .bashrc as well which figures out which branch you are currently on.

Back: [Dotfiles](14_dotfiles.md)	
Forward: [Navigating the Command Line 2.0](16_navigate_cli_2.md)
