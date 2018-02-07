#!/usr/bin/env ruby
module RPS
  def wins(player1, player2)
    if (player1 == 'rock') && (player2 == 'scissors')
      return "Human Wins"
    elsif (player1 == 'paper') && (player2 == "rock")
      return "Human Wins"
    elsif (player1 == 'scissors') && (player2 == "paper")
      return "Human Wins"
    elsif player1 == player2
      return "Tie Game!"
    else
      return "Computer is the Winner"
    end
  end
end

class Game
  include RPS

  def initialize(player1_choice)
    array = ["rock", "paper", "scissors"]
    @player1_choice = player1_choice
    @computer_choice = array.sample
  end

  def play_game()
    puts  "computer chooses " + @computer_choice
    puts wins(@player1_choice, @computer_choice)
  end
end
# choice = ""
until  human_choice == "rock" || human_choice == "paper" || human_choice == "scissors"
  puts 'Pick Rock Paper or Scissors?'
  human_choice = gets.chomp.downcase
end
play = Game.new(human_choice)
play.play_game
