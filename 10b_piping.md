# Piping Commands Together

In the previous examples, our output, the printing of Hello World went to stdout, the screen. Here we can pipe the output to the stdin of another command.

Try this now [ex. 7](example7):
```
BabyMac:~ jennapederson$ ./hello_world.sh < names.txt | tee output.txt
Hello World, Jenna Pederson!
Hello World, Twin Cities Geekettes!
BabyMac:~ jennapederson$ less output.txt
```

In this example, we are piping our output to a command, tee. The tee command sends it's input (the output from the previous command) to a file (output.txt) and to stdout (the screen).

## Real life example

This example finds all remote git branches that have 'features' in the name.

```
BabyMac:~ jennapederson$ git branch -r | grep features
origin/features/feature1
origin/features/feature2
origin/features/feature3
```

Back: [Redirect Input and Output](10a_redirection.md)
Forward: [Who Cares?](11_who_cares.md)
