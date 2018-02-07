class RPS
  def initialize()
    puts "let the game begin"
  end

  def wins?(player1, player2)
    if (player1 == 'rock') && (player2 == 'scissors')
      return true
    elsif (player1 == 'paper') && (player2 == "rock")
      return true
    elsif (player1 == 'scissors') && (player2 == "paper")
      return true
    elsif player1 == player2
      return nil      
    end
  end
end
