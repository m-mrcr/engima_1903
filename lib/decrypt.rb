require './lib/enigma'
require './lib/shifts'
require './lib/offset'
require './lib/key'

read_file, write_file, key, date = ARGV

encrypted = File.open(read_file, "r")
decrypted = File.open(write_file, "w")

decryption = Enigma.new.decrypt(encrypted.read.chomp, key, date)
decrypted.write(decryption[:decryption])
decrypted.close

p "Created #{write_file} with the key #{decryption[:key]} and date #{decryption[:date]}"
