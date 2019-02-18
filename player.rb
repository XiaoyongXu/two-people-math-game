class Player

  def initialize(name)
    @name = name
    @lives = 3
  end
  def lose_live
    @lives -= 1
  end
  attr_reader:lives
  attr_reader:name
end