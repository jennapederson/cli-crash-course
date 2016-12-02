# Connecting Things Together

Normally output and errors goes to stdout, the terminal, and input comes from stdin, the keyboard. Stdin, stdout, and stderr are data streams.


```
                    +---------------+ 
                    |               |-----> STDOUT(1)
     STDIN(0) ----->|    Program    |
                    |               |
                    +---------------+ 
                               |
                               |
                               +------> STDERR(2)
```

Sometimes we don't want this. We can move data from output/input/error streams to/from a file using redirection. We can also combine several commands together with piping.

## Redirection

Redirection is all about files.

When we redirect input to a command, data is taken from a file by redirecting the stdin stream. When we redirect output to a file, output from a command is sent to a file by redirecting the output stream.

[Redirect Input and Output](10a_redirection.md)

## Piping

Piping is all about processes.

With piping, we connect the stdout of one command to the stdin of another command as if there were a pipe or a stream of data between the two.

[Piping Commands Together](10b_piping.md)


Back: [Reading User Input](08_read_user_input.md)
Forward: [Redirect Input and Output](10a_redirection.md)
