#!/bin/bash -eux

find / -name "authorized_keys" | xargs -i rm -f {}
