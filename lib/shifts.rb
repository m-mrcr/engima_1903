class Shifts

  def initialize(key = Key.new, offset = Offset.new)
    @key = key.class == String ? Key.new(key) : key
    @offset = date.class == String ? Offset.new(date) : date
  end

  

end
