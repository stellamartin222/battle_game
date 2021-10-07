require 'move'

describe Move do

  subject(:move) { described_class.new }

  describe '#simple_attack' do
    it 'should return 5, 10 or 20 when called' do
      expect([5,10,20].include?(move.simple_attack)).to eq(true)
    end
  end
end