require_relative 'player'
require_relative 'move'

class Game
  attr_reader :player_1, :player_2, :current_player, :players, :current_opponent

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player_1
    @current_opponent = @player_2
    @@move = Move.new
  end

  def attack(opponent)
    opponent.take_damage(@@move.simple_attack)
    switch_turn
  end

  def self.create(player_1, player_2)
    @@game = Game.new(player_1, player_2)
  end

  def self.get_game
    @@game
  end
  private

  def switch_turn
    @current_player = current_player == @player_1 ? @player_2 : @player_1
    @current_opponent = current_opponent == @player_1 ? @player_2 : @player_1
  end

end