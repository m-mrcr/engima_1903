class Key

  attr_reader :key_initial,
              :key_split

  def initialize(key_input = "%05d"%rand(99999))
    @key_initial = key_input
    @key_split = key_split
  end

  def key_split
    final = {}
    final[:a] = @key_initial[0..1].to_i
    final[:b] = @key_initial[1..2].to_i
    final[:c] = @key_initial[2..3].to_i
    final[:d] = @key_initial[3..4].to_i
    final
  end

end
