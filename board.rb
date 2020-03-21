class Board
  BOARD_WIDTH = 5
  BOARD_SIZE = BOARD_WIDTH * BOARD_WIDTH
  COVERED_TILE = '_'
  MINE_TILE = '*'
  EMPTY_TILE = ' '

  attr_reader :visible_board, :mine_board

  def initialize
    @visible_board = make_visible_board
    @mine_board = make_mine_board(@visible_board)
  end

  private

  def make_visible_board
    Array.new(BOARD_SIZE, MINE_TILE)
    # (1..BOARD_SIZE).to_a
  end

  def make_mine_board(visible_board)
    mine_board = visible_board.map do |tile|
      random = rand(1..10)
      random < 3 ? MINE_TILE : EMPTY_TILE
    end
    mine_board
  end

end