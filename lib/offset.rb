class Offset

  attr_reader :initial, :split

  def initialize(input = Time.now.strftime("%d%m%y"))
    @initial = input
    @split = split
  end



end
