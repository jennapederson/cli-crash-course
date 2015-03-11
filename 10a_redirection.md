# Redirect Input and Output

## Redirecting Input From a File

Taking the previous example, let's read in data from a stdin using file redirection.

Edit the hello_world.sh file using vim to read a file from stdin:
```
#!/bin/bash
# the read command reads data from stdin
while read name
do
    echo "Hello World, $name!"
done
```

Create a new file called names.txt with some data like below. Make sure there is a line at the end of the file.
```
Jenna Pederson
Twin Cities Geekettes
```

Try this now [ex. 5](example5):
```
action@cli-crash-course-197957:~$ ./hello_world.sh < names.txt
Hello World, Jenna Pederson!
Hello World, Twin Cities Geekettes!
```

## Redirecting Output

Sometimes we don’t want our output to go to the screen, but to a file.

Try this now [ex. 6](example6):
```
action@cli-crash-course-197957:~$ ./hello_world.sh < names.txt > output.txt
action@cli-crash-course-197957:~$ less output.txt
```

Notice how we used both input redirection and output redirection here. We are starting to touch on one of the very powerful features of using the command line: stringing commands together.

The alternative output redirection command is to use >>. This will append to the output file.
