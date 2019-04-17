class Enigma

  def encrypt(message, key = Key.new, offset = Offset.new)
    shifts = Shifts.new(key, offset)
    {
      encryption: message,
      key: key.initial_key,
      date: offset.initial_offset,
    }
  end

  def decrypt(message, key = Key.new, offset = Offset.new)
    shifts = Shifts.new(key, offset)
    {
      decryption: message,
      key: key.initial_key,
      date: offset.initial_offset,
    }
  end

end
