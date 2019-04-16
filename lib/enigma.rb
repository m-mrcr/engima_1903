class Enigma

  def encrypt(message, key, offset)
    {
      encryption: message,
      key: key,
      date: offset,
    }
  end

  def decrypt(message, key, offset)
    {
      decryption: message,
      key: key,
      date: offset,
    }
  end

end
