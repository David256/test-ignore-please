#!/bin/bash

RANDOM=$(od -vAn -N4 -tu4 < /dev/urandom)

echo "$RANDOM" | md5sum | awk '{print $1}' > file.with.random.content

