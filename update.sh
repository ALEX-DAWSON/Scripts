#!/usr/bin/env bash

release_file=/etc/os-release

if grep -q "arch" $release_file
then
    sudo pacman -Syu
fi

if grep -q "debian" $release_file
then
    sudo apt update
    sudo apt upgrade
fi