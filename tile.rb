class Tile
  attr_accessor :bomb

  def initialize
    @bomb = false
    @hidden = true
    @adj_val = nil
    @flag = false
  end
end
