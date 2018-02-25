#!/bin/sh

grep '^pub mod' "$(dirname "$0")"/../src/lib.rs  | tail -n +2 | cut -d\  -f3
