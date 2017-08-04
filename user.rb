class User

  def initialize(name = "p1")
    @name = name
  end

  def get_pos
    puts "Enter row."
    row = gets.chomp.to_i
    puts "Enter column."
    col = gets.chomp.to_i
    [row, col]
  end

  
end
