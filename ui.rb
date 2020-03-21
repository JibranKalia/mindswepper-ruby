require_relative "board"

class UI
  def self.welcome_message
    puts "Welcome to Mindsweeper!"
  end

  def self.draw(board)
    puts "Current Board:"
    board.each_slice(Board::BOARD_WIDTH).to_a.each do |slice|
      puts slice.join(" ")
    end
  end
end