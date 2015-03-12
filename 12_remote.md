# Crossing the Bounds of Your Computer

scp can be used to get files to/from a remote computer and takes the similar form to cp:

```
action@cli-crash-course-197957:~$ scp hello_world.sh jenna@612softwarefoundry.com:~/hello_world_remote.sh
hello_world.sh                                                     100%  137     0.1KB/s   00:00
```

Or run a command on a remote server:

```
action@cli-crash-course-197957:~$ ssh jenna@612softwarefoundry.com ‘ls -l ~'
total 4
-rwxr--r-- 1 jenna jenna 137 Mar  7 19:48 hello_world_remote.sh
```

Back: [Who Cares?](11_who_cares.md)	
Forward: [Super User](13_super_user.md)
