class Offset

  attr_reader :initial, :split

  def initialize(input = Time.now.strftime("%d%m%y"))
    @initial = input
    @split = split
  end

  def split
   final = {}
   setting = (@initial.to_i ** 2).to_s.chars.last(4)
   final[:a] = setting[0].to_i
   final[:b] = setting[1].to_i
   final[:c] = setting[2].to_i
   final[:d] = setting[3].to_i
   final
  end

end
