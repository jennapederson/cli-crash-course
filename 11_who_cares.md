# Who Cares?

Why is all of this so important?

### POWER!

In a unix environment, each command is meant to do one and only one thing. By chaining commands and data together using piping and redirection you get more flexibility.

## Examples

### To see if a java process is running

```
jennapederson:~/workspace $ ps -ef | grep java
```

This can be useful because this command will output the process id. You could even pipe this process id to the kill command to magically kill the java process that was running.

### To find your favorite command

I have my history set to remember something like 10k of the last commands I've typed but sometimes I don't remember what the specific command is I am looking for.

```
➜  vagrant git:(master) ✗ history | grep cap
 1866  git commit -m "Change to small caps and go back to default font size"
 1868  git commit -m "Change to small caps and go back to default font size"
 3906  git commit -m "Change to use on stateChangeSuccess; Fix how events are tracked so data is captured correctly"
 4449  git commit -m "Disable landscape orientation on android"
 7135  git commit -m "Change capistrano gems to not require dependencies"
 8058  which cap
 8077  rvm gemset create mynd-cap
 8079  rvm gemset use mynd-cap
 8088  rvm gemset use mynd-cap
 8103  cap staging deploy
 8107  cap staging deploy
 8156  cap staging deploy
 8186  cap production deploy
 8190  rvm gemset use mynd-cap
 8191  which cap
 8192  cap production deploy
 8471  cap -T
 8477  cap -T
 8595  history | grep cap
 8608  which cap
 9233  cap production deploy
 9236  rvm gemset use mynd-cap
 9237  cap production deploy
 9861  rvm gemset create cornerhouse-cap
 9866  cp ~/Downloads/capistrano-git-subdir.zip .
 9867  gunzip capistrano-git-subdir.zip
 9871  cd capistrano-git-subdir
 9877  rvm gemset use cornerhouse-cap
 9881  cap -T
 9882  cap staging unicorn:restart
 9883  cap -T
10009  rvm gemset use cornerhouse-cap
10010  history | grep cap
10012  cap -T
10016  cap staging deploy
10018  cap staging deploy
```

### To see your favorite commands

You can pipe the output of history to awk, which  will scan it and print the second argument (the command) of each line to output. The output from awk gets piped into sort, which sorts it alphabetically. The sorted output is piped to uniq and prefixes the command with its count. This is then piped to the sort command again, but it’s now sorted reverse numerically. Finally this is piped to head, which will display (by default) the first 10 lines of its input.

```
jennapederson:~/workspace $ history | awk '{print $2}' | sort | uniq -c | sort -rn | head
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

### To see what's taking up so much room in your iTunes library:

The "du" command checks disk usage. We're going to check the size in kilobyte blocks for all the directories/files in a given directory.

```

jennapederson:~/workspace $ cd ~/Music/iTunes/iTunes\ Music/
action@cli-crash-course-197957:iTunes Music $ du -k * | sort -nr | head
6508996	Home Videos
4120428	Compilations
3941588	Podcasts
1422264	Unknown Artist
920048	Bob Dylan
604792	VNV Nation
597572	Stromkern
560444	Led Zeppelin
544968	Various Artists
506908	Common Rotation
action@cli-crash-course-197957:iTunes Music $
```

## Recommendation

When stringing commands together like this, test them each individually to build up the final command.

Back: [Piping Commands Together](10b_piping.md)
Forward: [Crossing the Bounds of Your Computer](12_remote.md)
