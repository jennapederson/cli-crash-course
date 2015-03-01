# Linux/Unix/OS X

If you are using a *nix flavor (i.e. OS X/Mac, Linux, or Unix), let's make sure you have the correct Terminal shell set up.

1. If you’re on a Mac:
 1. hit CMD+Space and type 'terminal'.
 1. Hit enter after selecting Terminal.
1. If you're on Linux/Unix:
 1. open up the console or terminal application (it is assumed you already know how to do this).
1. Type the following command and press enter:

  ```
  echo $SHELL
  ```
1. Does it read something similar to the following, ending in ‘bash’? If yes, you are good to go!

  ```
  /bin/bash
  ```
1. If not, type the following command (note that those are back ticks, not single quotes) and press enter.

  ```
  chsh -s `grep bash /etc/shells`
  ```
1. Enter your password to authorize the change.
1. Reopen the terminal or a new tab.
1. Double-check the change using the echo command above to make sure it reflects the new shell path.

## Now you're ready for the workshop. See you there!