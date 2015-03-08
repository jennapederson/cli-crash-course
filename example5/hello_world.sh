#!/bin/bash

# the read command reads data from stdin
while read name
do
    echo "Hello World, $name!"
done