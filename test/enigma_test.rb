require_relative 'test_helper'

class EnigmaTest < MiniTest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_encrypt_a_unencrypted_message
    expected = {
                 encryption: "keder ohulw",
                 key: "02715",
                 date: "040895"
               }

    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_can_decrypt_a_encrypted_message
    expected = {
                 decryption: "hello world",
                 key: "02715",
                 date: "040895"
                }

    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_can_process_a_message_without_a_provided_offset
    expected = {
                 encryption: "ojhavesdyq ",
                 key: "02715",
                 date: Time.now.strftime("%d%m%y")
               }
    assert_equal expected, @enigma.encrypt("hello world", "02715")

    expected = {
                 decryption: "hello world",
                 key: "02715",
                 date: Time.now.strftime("%d%m%y")
               }
    assert_equal expected, @enigma.decrypt("ojhavesdyq ", "02715")
  end

end
