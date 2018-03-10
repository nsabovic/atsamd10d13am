#!/bin/bash

peripherals() {
  cat "$(dirname "$0")"/ATSAMD10D13AM.svd | \
    xmlstarlet sel -T -t -v '//peripheral/name' | \
    tr '[:upper:]' '[:lower:]'
}

generated() {
  grep '^pub mod' "$(dirname "$0")"/../src/lib.rs  | tail -n +2 | cut -d\  -f3
}

missing() {
  comm -23 <(peripherals) <(generated)
}

missing
