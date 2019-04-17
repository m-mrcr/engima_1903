class Shifts

  attr_reader :key,
              :offset,
              :characters,
              :final

  def initialize(key = Key.new, offset = Offset.new)
    @key = key.class == String ? Key.new(key) : key
    @offset = offset.class == String ? Offset.new(offset) : offset
    @characters = ("a".."z").to_a << " "
    @relevant_shifts = relevant_shifts
  end

  def relevant_shifts
    final = []
    final<< @key.split_key[:a] + @offset.split_offset[:a]
    final<< @key.split_key[:b] + @offset.split_offset[:b]
    final<< @key.split_key[:c] + @offset.split_offset[:c]
    final<< @key.split_key[:d] + @offset.split_offset[:d]
    final
  end

  def current_rotation
    key = @relevant_shifts.first
    @relevant_shifts.rotate!
    key
  end

  def encode(message)
    message.downcase.chars.map do |char|
      next unless @characters.include?(char)
      char.tr(@characters.to_s, @characters.rotate(current_rotation).to_s)
    end.join
  end

  def decode(message)
    message.downcase.chars.map do |char|
      next unless @characters.include?(char)
      char.tr(@characters.to_s, @characters.rotate(-current_rotation).to_s)
    end.join
  end

end
