require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :current_player, :players

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2]
    @current_player = @player_1
  end

  def attack(opponent)
    opponent.take_damage
    switch_turn
  end

  private

  def switch_turn
    @current_player = current_player == @player_1 ? @player_2 : @player_1
  end

end