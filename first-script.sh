#!/usr/bin/env bash

echo Hello $(whoami)
echo Today is && date | awk '{print $2 " " $3 " " $4}'