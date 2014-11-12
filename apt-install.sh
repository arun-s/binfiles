#!/bin/bash

echo sudo apt-get install $* >> ~/install_history
sudo apt-get install $*

