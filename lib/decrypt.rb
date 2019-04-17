require './lib/enigma'
require './lib/shifts'
require './lib/key'
require './lib/offset'

encrypted, decrypt, key, offset = ARGV

encrypted_message = File.open(encrypted, "r")
decryption_location = File.open(decrypt, "w")

encrypted_message = Enigma.new.decrypt(encrypted_message.read, key, offset)
created.write(encrypted_message[:decryption])
created.close

p "Created #{decrypt} with the key #{encrypted_message[:key]} and date #{encrypted_message[:date]}"
