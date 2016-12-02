# More Commands & Tools

## Quick & Simple HTTP Server

This will serve the files in the current directory from a web server.

```
BabyMac:~ jennapederson$ python -m SimpleHTTPServer
```

Now navigate to [http://localhost:8000](http://localhost:8000).

## Create an SSH Key Pair for Github

Do you have an ssh key already?

```
ls -la ~/.ssh
```

Generate a key pair:

```
ssh-keygen -t rsa -b 4096 -C "jenna@612softwarefoundry.com"
```

Is the ssh agent running?

```
eval "$(ssh-agent -s)"
```

Add your new key to the ssh agent:

```
ssh-add ~/.ssh/id_rsa
```

Now add your public key to GitHub.

Details: https://help.github.com/articles/generating-ssh-keys/

Back: [Crossing the Bounds of Your Computer](12_remote.md)
Forward: [Back to the beginning](README.md)
