require './lib/enigma'
require './lib/shifts'
require './lib/key'
require './lib/offset'

read_file, write_file = ARGV

message = File.open(read_file, "r")
encrypted = File.open(write_file, "w")

encrypted_message = Enigma.new.encrypt(message.read.chomp)
encrypted.write(encrypted_message[:encryption])
encrypted.close

p "Created #{write_file} with the key #{encrypted_message[:key]} and date #{encrypted_message[:date]}"
