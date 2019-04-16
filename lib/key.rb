class Key

  def initialize(key = rand.to_s[2..6])
    @key = key
    @split = split
  end

end
