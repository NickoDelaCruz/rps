require('rspec')
require('rps')

describe('#rps') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end
  it('returns true if paper the object and rock is the argument') do
    game = RPS.new()
    expect(game.wins?("paper", "rock")).to(eq(true))
  end
  it('returns true if scissors is the object and paper is the argument') do
    game = RPS.new()
    expect(game.wins?("scissors", "paper")).to(eq(true))
  end
  it('returns nil if it is a tie') do
    game = RPS.new()
    expect(game.wins?("rock", "rock")).to(eq(nil))
  end
  it('returns false is paper is the object and scissors is the argument')do
    game = RPS.new()
    expect(game.wins?("paper", "scissors")).to(eq(false))
  end
end
