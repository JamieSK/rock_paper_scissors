require_relative 'ring'

class Game
  def self.play(move1, move2)
    precedence = Ring.new(['rock', 'scissors', 'paper'])

    if precedence.next(move1) == move2
      return "Player 1 wins with #{move1.capitalize}!"
    elsif precedence.previous(move1) == move2
      return "Player 2 wins with #{move2.capitalize}!"
    else
      return "It's a draw."
    end
  end
end
