require 'game'
require 'player'

describe Game do

  subject(:game) { described_class.new }
  let(:opponent) { double :player}

  describe '#attack_opponent' do
    it "should reduce opponent hp by 10" do
      allow(opponent).to receive(:take_damage).and_return(true)
      expect(game.attack(opponent)). to eq true
    end
  end
end