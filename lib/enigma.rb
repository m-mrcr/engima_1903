class Enigma

  def encrypt(message, key = Key.new, offset = Offset.new)
    shifts = Shifts.new(key, offset)
    { encryption: shifts.encode(message),
      key: shifts.key.initial_key,
      date: shifts.offset.initial_offset }
  end

  def decrypt(message, key = Key.new, offset = Offset.new)
    shifts = Shifts.new(key, offset)
    { decryption: shifts.decode(message),
      key: shifts.key.initial_key,
      date: shifts.offset.initial_offset }
  end

end
