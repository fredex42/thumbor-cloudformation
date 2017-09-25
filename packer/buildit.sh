#!/bin/bash

ruby ./yaml2json.rb build.yaml > build.json
packer build "$@" build.json
