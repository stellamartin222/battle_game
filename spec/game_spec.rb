require 'game'
require 'player'

describe Game do

  let(:player_1) { double :player}
  let(:player_2) { double :player}
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#initialize' do
    it "should have a player 1" do
      expect(game.player_1). to eq player_1
    end
    it "should have a player 2" do
      expect(game.player_2). to eq player_2
    end
  end

  describe '#attack_opponent' do
    it "should reduce opponent hp by 10" do
      allow(player_2).to receive(:take_damage).and_return(true)
      expect(game.attack(player_2)). to eq player_1
    end

    
  end
end