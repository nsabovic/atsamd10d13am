#!/bin/sh
cat "$(dirname "$0")"/ATSAMD10D13AM.svd | \
  xmlstarlet sel -T -t -v '//peripheral/name' | \
  tr '[:upper:]' '[:lower:]'
