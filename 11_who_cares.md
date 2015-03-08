# Who Cares?

Why is all of this so important?

### POWER!

In a unix environment, each command is meant to do one and only one thing. Chaining commands together using redireciton and piping lets each command can talk to other commands. This gives you flexibility and it can make you more productive.

## Examples

### To see if a java process is running

```
action@cli-crash-course-197957:~$ ps -ef | grep java
```

This can be useful because this command will output the process id. You could even pipe this process id to the kill command to magically kill the java process that was running.


### To see your favorite commands

You can pipe the output of history to awk, which  will scan it and print the second argument (the command) of each line to output. The output from awk gets piped into sort, which sorts it alphabetically. The sorted output is piped to uniq and prefixes the command with it's count. This is then piped to the sort command again, but it’s now sorted reverse numerically. Finally this is piped to head, which will display (by default) the first 10 lines of it’s input.

```
action@cli-crash-course-197957:~$ history | awk '{print $2}' | sort | uniq -c | sort -rn | head
3425 git
1256 cd
 930 ls
 523 vagrant
 339 less
 322 subl
 272 rm
 149 rake
 141 rvm
 134 bundle
```

## Recommendation

When stringing commands together like this, test them each individually to build up the final command.