# Piping Commands Together

We can also string commands together using something called piping. With piping, the output of each command is connected to the input of the next command. In this example, our output is the printing of Hello World.

Try this now [ex. 7](example7):
```
action@cli-crash-course-197957:~$ ./hello_world.sh < names.txt | tee output.txt
Hello World, Jenna Pederson!
Hello World, Twin Cities Geekettes!
action@cli-crash-course-197957:~$ less output.txt
```

In this example, we are piping our output to a command, tee. The tee command also copies your stdout to a file, in this case output.txt. This is why you’ll see it print on the screen (stdout) AND to the output.txt file.