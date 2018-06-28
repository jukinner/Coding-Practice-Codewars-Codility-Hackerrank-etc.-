# Build a Score Tracking Program in Ruby
# This guide examines a seemingly simple program, however in order to properly implement the solution you will be required to use a number of key Ruby programming techniques. In this exercise you'll build out a scoreboard program that generates an inning by inning score for a baseball team along with a dynamic total.
# Summary
# Build a program that keeps track of a baseball team's score on an inning by inning basis along with totaling up the total runs.

# Exercise Description
# Build a Ruby class that works like a scoreboard for a 9 inning game. This means that the class should start a game where every inning has 0 runs and as the game goes on, runs can be added to runs, which also changes the total.

# Example Game
# team = Scoreboard.new('Astros')
# team.score # => {"Astros"=>{1=>0, 2=>0, 3=>0, 4=>0, 5=>0, 6=>0, 7=>0, 8=>0, 9=>0}}
# team.add_run inning: 3
# team.add_run inning: 3
# team.add_run inning: 5
# team.add_run inning: 8
# team.score # => {"Astros"=>{1=>0, 2=>0, 3=>2, 4=>0, 5=>1, 6=>0, 7=>0, 8=>1, 9=>0}}
# team.generate_total # => 4


require 'rspec'

class Scoreboard

  def initialize(team)
    @team = team
    @score = {@team=>{1=>0, 2=>0, 3=>0, 4=>0, 5=>0, 6=>0, 7=>0, 8=>0, 9=>0}}
  end

  def score
    @score 
  end

  def add_run(inning:)
    @score.each_value { |value| value[inning] += 1}
  end

  def generate_total
    total, inning = 0, 1
    9.times do
      total += @score.dig(@team, inning)
      inning += 1
    end
    p total
  end
end

# alternate way
# class Scoreboard
#   attr_reader :score

#   def initialize(team)
#     @team = team
#     @score = score_builder
#   end

#   def score_builder
#     {
#       @team => {
#         1 => 0,
#         2 => 0,
#         3 => 0,
#         4 => 0,
#         5 => 0,
#         6 => 0,
#         7 => 0,
#         8 => 0,
#         9 => 0
#       }
#     }
#   end

#   def generate_total
#     @score[@team].values.inject(&:+)
#   end

#   def add_run inning:
#     @score[@team][inning] += 1
#   end
# end

describe 'Scoreboard' do
  it 'should properly calculate the total score for a team' do
    team = Scoreboard.new('Astros')
    team.add_run inning: 1
    team.add_run inning: 7
    team.add_run inning: 9
    expect(team.generate_total).to eq(3)
  end

  it 'should generate a hash with the total runs scored each inning' do
    team = Scoreboard.new('Astros')
    team.add_run inning: 3
    team.add_run inning: 3
    team.add_run inning: 5
    team.add_run inning: 8
    team.score
    expect(team.score).to eq({"Astros"=>{1=>0, 2=>0, 3=>2, 4=>0, 5=>1, 6=>0, 7=>0, 8=>1, 9=>0}})
  end

  it 'should generate a hash with the innings and 0 values for the runs each inning when a Scoreboard is created' do
    team = Scoreboard.new('Astros')
    expect(team.score).to eq({"Astros"=>{1=>0, 2=>0, 3=>0, 4=>0, 5=>0, 6=>0, 7=>0, 8=>0, 9=>0}})
  end
end











