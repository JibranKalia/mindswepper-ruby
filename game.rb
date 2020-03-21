class Game
  attr_accessor :turn_count

  def initialize
    @turn_count = 0
  end

  def won?
    # TODO: Check board complete
    false
  end

  def lost?
    # TODO: 
    if @turn_count == 2
      return true
    end
    false
  end

  def running?
    !(won? || lost?)
  end

end

# Mindsweeper
#   - Game Loop
#   - Play turn:
#     - Prompt for coordinate
#     - check if mine or empty
#     - if mine game to lost
#     - if empty compute adjascent number
#     - display new board

# Game Object
#   - Status: Running, Won, Lost

# Game Board:
#   - Visible Board 
#   - Hidden Board
#   - Compute adjascent

# Coordinate
#   - x, y
#   - Formula to get from board

# UI
#   - Print Board
