require 'player'

class Game

  def initialize # (player_1_name, player_2_name)
    # @player_1 = Player.new(player_1_name)
    # @player_2 = Player.new(player_2_name)
    # @players = [@player_1, @player_2]
  end

  def attack(opponent)
    opponent.take_damage
  end

end