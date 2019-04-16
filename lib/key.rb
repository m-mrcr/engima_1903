class Key

  attr_reader :initial,
              :split

  def initialize(input = "%05d"%rand(99999))
    @initial = input
    @split = split
  end

  def split
    final = {}
    final[:a] = @initial[0..1].to_i
    final[:b] = @initial[1..2].to_i
    final[:c] = @initial[2..3].to_i
    final[:d] = @initial[3..4].to_i
    final
  end

end
