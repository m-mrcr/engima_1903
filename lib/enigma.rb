class Enigma

  def encrypt(message, key, offset)
    {
      encryption: message,
      key: key,
      offset: offset,
    }
  end

  def decrypt(message, key, offset)
    {
      decryption: message,
      key: key,
      offset: offset,
    }
  end

end
