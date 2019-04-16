class Key

  attr_reader :initial_key,
              :split_key

  def initialize(input_key = "%05d"%rand(99999))
    @initial_key = input_key
    @split_key = split_key
  end

  def split_key
    final = {}
    final[:a] = @initial_key[0..1].to_i
    final[:b] = @initial_key[1..2].to_i
    final[:c] = @initial_key[2..3].to_i
    final[:d] = @initial_key[3..4].to_i
    final
  end

end
