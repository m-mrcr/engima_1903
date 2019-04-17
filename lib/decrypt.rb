require './lib/enigma'
require './lib/shifts'
require './lib/key'
require './lib/offset'

encrypted, decrypt, key, offset = ARGV

encrypted_message = File.open(encrypted, "r")
decryption_location = File.open(decrypt, "w")
