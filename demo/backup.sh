#!/bin/sh

ssh -i key borg@borg.example.com hostname

# Setting this, so you won't be asked for your repository passphrase:
export BORG_PASSPHRASE='prout'

export BORG_RSH='ssh -i key'

borg create                         \
    --filter AME                    \
    --list                          \
    --stats                         \
    --show-rc                       \
    --compression lz4               \
    --exclude-caches                \
                                    \
    borg@borg.example.com:backup::'{now}'                        \
    ./stuff                         \
