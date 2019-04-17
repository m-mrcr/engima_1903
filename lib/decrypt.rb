require './test/test_helper'

read_file, write_file, key, date = ARGV

encrypted = File.open(read_file, "r")
decrypted = File.open(write_file, "w")

decryption = Enigma.new.decrypt(encrypted.read, key, date)
decrypted.write(decryption[:decryption])
decrypted.close

p "Created #{write_file} with the key #{decryption[:key]} and date #{decryption[:date]}"
