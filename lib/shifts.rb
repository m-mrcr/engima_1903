class Shifts

  attr_reader :key,
              :offset,
              :characters,
              :final

  def initialize(key = Key.new, offset = Offset.new)
    @key = key.class == String ? Key.new(key) : key
    @offset = offset.class == String ? Offset.new(offset) : offset
    @characters = ("a".."z").to_a << " "
    @final_shifts = final_shifts
  end

  def final_shifts
    final = {}
    final[:a] = @key.split_key[:a] + @offset.split_offset[:a]
    final[:b] = @key.split_key[:b] + @offset.split_offset[:b]
    final[:c] = @key.split_key[:c] + @offset.split_offset[:c]
    final[:d] = @key.split_key[:d] + @offset.split_offset[:d]
    final
  end

  

end
