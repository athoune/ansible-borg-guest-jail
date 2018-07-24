#!/bin/sh

# Setting this, so you won't be asked for your repository passphrase:
export BORG_PASSPHRASE='prout'

export BORG_RSH='ssh -i key'

borg init --encryption=repokey-blake2 'borg@borg.example.com:backup'


