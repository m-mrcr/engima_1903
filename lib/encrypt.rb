require './lib/enigma'
require './lib/shifts'
require './lib/offset'
require './lib/key'

read_file, write_file = ARGV

message = File.open(read_file, "r")
encrypted = File.open(write_file, "w")

encryption = Enigma.new.encrypt(message.read.chomp)
encrypted.write(encryption[:encryption])
encrypted.close

p "Created #{write_file} with the key #{encryption[:key]} and date #{encryption[:date]}"
