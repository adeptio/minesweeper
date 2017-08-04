require_relative "tile"

class Board
  def initialize(grid = default_grid)
    @grid = grid
  end

  def default_grid
    Array.new(9) { Array.new(9) { Tile.new } }
  end

  def seed_grid
    seeded = []
    until seeded.length == 10
      row = rand(9)
      col = rand(9)
      pos = [row, col]
      if seeded.include?(pos)
        next
      else
       self[pos].bomb = true
       seeded << pos
      end
    end
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def rows
    grid
  end
end
