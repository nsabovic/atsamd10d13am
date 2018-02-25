#!/bin/bash
comm -23 <("$(dirname "$0")"/peripherals.sh) <("$(dirname "$0")"/generated.sh)
