require './lib/enigma'
require './lib/shifts'
require './lib/key'
require './lib/offset'

read_file, write_file = ARGV

message = File.open(read_file, "r")
encrypted = File.open(write_file, "w")
