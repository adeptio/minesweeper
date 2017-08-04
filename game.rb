class Game

  def initialize(user = User.new, board = Board.new)
    @user = user
    @board = board
  end

  def take_turn
    board.render
    guess = user.get_pos
    if board[guess].bomb
      game_over? == true
  end

  def play
    take_turn until game_over?

  end



end
