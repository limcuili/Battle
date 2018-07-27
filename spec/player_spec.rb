describe Player do

  let(:player1) { described_class.new('Tristan') }
  let(:player2) { described_class.new('Cui Li') }

  describe '#name' do
    it "displays a name" do
      expect(player1.name).to eq ('Tristan')
    end
  end

  describe '#hit_points' do
    it 'returns the default HP on initiation' do
      expect(player1.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe '#attack' do
    it { is_expected.to respond_to(:attack) }

    it 'damages player 2' do
      expect(player2).to receive(:get_damaged)
      player1.attack(player2)
    end
  end

  describe '#get_damaged' do
    it 'reduces player 1 HP by 10' do
      expect { player1.get_damaged }.to change { player1.hit_points }.by(-10)
    end
  end

end
