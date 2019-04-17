class Offset

  attr_reader :initial_offset,
              :split_offset

  def initialize(input_offset = Time.now.strftime("%d%m%y"))
    @initial_offset = input_offset
    @split_offset = split_offset
  end

  def split_offset
   final = {}
   setting = (@initial_offset.to_i ** 2).to_s.chars.last(4).join
   final[:a] = setting[0].to_i
   final[:b] = setting[1].to_i
   final[:c] = setting[2].to_i
   final[:d] = setting[3].to_i
   final
  end

end
