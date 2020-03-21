
require_relative "game"
require_relative "board"
require_relative "ui"

class Mindsweeper
  def initialize
    @game = Game.new
    @board = Board.new
  end

  # Main game loop
  def play
    UI.welcome_message

    while @game.running?
      play_turn
    end
  end

  private

  def play_turn
    UI.draw(@board.visible_board)
    @game.turn_count += 1
  end
end

Mindsweeper.new.play