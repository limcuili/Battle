require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) {double :player }

  describe '#attack' do
    it { is_expected.to respond_to(:attack) }

    it 'damages player 2' do
      expect(player2).to receive(:get_damaged)
      game.attack(player2)
    end
  end

end
