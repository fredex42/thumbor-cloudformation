#!/usr/bin/env ruby

require 'json'
require 'yaml'

#puts "Opening #{ARGV[0]}"

if ARGV[0]
    open(ARGV[0],"r") do |f|
        jsondata = YAML.load(f.read)
        print JSON.generate(jsondata)
    end
else
  print JSON.generate(YAML.load(STDIN.read))
end
