class Offset

  attr_reader :offset_initial,
              :offset_split

  def initialize(offset_input = Time.now.strftime("%d%m%y"))
    @offset_initial = offset_input
    @offset_split = offset_split
  end

  def offset_split
   final = {}
   setting = (@offset_initial.to_i ** 2).to_s.chars.last(4)
   final[:a] = setting[0].to_i
   final[:b] = setting[1].to_i
   final[:c] = setting[2].to_i
   final[:d] = setting[3].to_i
   final
  end

end
