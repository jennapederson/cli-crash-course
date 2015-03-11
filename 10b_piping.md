# Piping Commands Together

In the previous examples, our output, the printing of Hello World went to stdout, the screen. Here we can pipe the output to the stdin of another command.

Try this now [ex. 7](example7):
```
action@cli-crash-course-197957:~$ ./hello_world.sh < names.txt | tee output.txt
Hello World, Jenna Pederson!
Hello World, Twin Cities Geekettes!
action@cli-crash-course-197957:~$ less output.txt
```

In this example, we are piping our output to a command, tee. The tee command sends it's input (the output from the previous command) to a file (output.txt) and to stdout (the screen).