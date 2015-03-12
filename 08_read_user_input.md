# Reading User Input

## Shell Script Arguments

We’ve run two slightly different versions of a shell script now. Let’s make this more dynamic by consuming a command line argument when we run the script.

Command line arguments can be referenced using $# or ${##}, based on position in the command line.

First parameter would be $1, second parameter $2, 10th parameter would be ${10}.

Let’s edit the hello_world.sh file using vim to use a command line argument:
```
#!/bin/bash
echo "Hello World, $1 $2!"
```

Try this now [ex. 3](example3):
```
action@cli-crash-course-197957:~$ ./hello_world.sh Jenna Pederson
Hello World, Jenna Pederson!
```

## Reading From Stdin

You can read input from a user interactively through stdin.

Let’s edit the hello_world.sh file using vim to prompt and read user input from stdin:
```
#!/bin/bash
echo -n "What is your name? "
read name
echo "Hello World, $name!"
```

Try this now [ex. 4](example4):
```
action@cli-crash-course-197957:~$ ./hello_world.sh
What is your name? Jenna Pederson
Hello World, Jenna Pederson!
```

[Environment](07_environment.md)	[Connecting Things Together](09_connecting_things_together.md)
