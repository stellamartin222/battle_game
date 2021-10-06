require 'player'

describe Player do

  subject(:player) { described_class.new("Player 1") }

  describe '#initialize' do
    it 'should initialize a player class with a name and health attribute' do
      expect(player).to have_attributes(name: "Player 1", health: 100)
    end
  end
  
  describe '#get_name' do
    it 'should return name' do
      expect(player.get_name).to eq("Player 1")
    end
  end
  
end