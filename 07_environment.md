# Environment

The shell environment is configured through a variety of variables called environment variables. This environment tells the shell and your various tools how to behave.

Try this now:
```
action@cli-crash-course-197957:~$ env
```

This prints out the environment in its current state.

## To Set a Variable for a Process

Let’s edit the hello_world.sh file using vim to use a variable:
```
#!/bin/bash
echo "Hello World, $HELLO_WORLD_NAME!"
```

Try this now [ex. 2](example2):
```
action@cli-crash-course-197957:~$ HELLO_WORLD_NAME='Jenna Pederson' ./hello_world.sh
Hello World, Jenna Pederson!
action@cli-crash-course-197957:~$ env | grep HELLO_WORLD_NAME
action@cli-crash-course-197957:~$ echo $HELLO_WORLD_NAME
```

## To Set a Variable for the Current Session

You can also set variables that are available for the duration of your current session.

Try this now [ex. 2](example2):
```
action@cli-crash-course-197957:~$ export HELLO_WORLD_NAME='Jenna Pederson'
action@cli-crash-course-197957:~$ env | grep HELLO_WORLD_NAME
HELLO_WORLD_NAME=Jenna Pederson
action@cli-crash-course-197957:~$ ./hello_world.sh
Hello World, Jenna Pederson!
```

To make environment variables persistent across login, you must export them on login. To do this, they need to be added to your ~/.bashrc file, which is sourced (executed) when you login. We’ll take a look at this with a later example.

## To Unset a Variable

Try this now:
```
action@cli-crash-course-197957:~$ unset HELLO_WORLD_NAME
action@cli-crash-course-197957:~$ env | grep HELLO_WORLD_NAME
```

## What is the Dollar Sign?

We’ve seen the dollar sign in the last couple examples. This is a special character that does parameter expansion. In the case of our environment variables, when we printed out "Hello World, $HELLO_WORLD_NAME!”, it expanded to the value of our variable.

We can do the same with arguments to our shell script.

Back: [Permissions](06_permissions.md)	
Forward: [Reading User Input](08_read_user_input.md)
