#!/bin/bash

#docker build -t cannable/metasploit .
buildah bud --no-cache -t cannable/metasploit .
