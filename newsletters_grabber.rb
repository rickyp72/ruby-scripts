#!/usr/bin/env ruby -w

# Where to get/place the newsletters
TARGET = "/Users/rparkinson/newsletter/"
SOURCE = "/data/digital_marketing/"
Dir.chdir(TARGET)

# Remove old newsletters
system("rm ./*")

hosts = ["dexter", "uk23", "flexo", "benjy", "bender", "stephen", "boxy", "agora"]
hosts.each do |server|
 system("scp #{server}:#{SOURCE}* .")
end