class Shifts

  attr_reader :key,
              :offset,
              :characters,
              :final

  def initialize(key = Key.new, offset = Offset.new)
    @key = key.class == String ? Key.new(key) : key
    @offset = offset.class == String ? Offset.new(offset) : offset
    @characters = ("a".."z").to_a << " "
    @final = final
  end



end
