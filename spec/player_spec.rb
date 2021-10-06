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
  
  describe '#attack_opponent' do
    it "should reduce opponent hp by 10" do
      expect(player.attack_opponent). to eq 10
    end
  end

  describe '#take_damage' do
    it "should reduce your hp by 10" do
      
      expect{player.take_damage}.to change {player.health}.by -10
    end
  end
end