# Connecting Things Together

Normally output goes to stdout, the screen, and input comes from stdin, the keyboard. Sometimes we don't want this. We can redirect output and input to/from a file and to combine several commands together with redirection and piping.

## Redirection

Redirection is all about files.

When we redirect input to a command, data is taken from a file by redirecting the stdin stream. When we redirect output to a file, output from a command is sent to a file by redirecting the output stream.

[Redirect Input and Output](10a_redirection.md)

## Piping

Piping is all about processes.

With piping, we connect the stdout of one command to the stdin of another command as if there were a pipe or a stream of data between the two.

[Piping Commands Together](10b_piping.md)


[Reading User Input](08_read_user_input.md)	[Who Cares?](11_who_cares.md)
