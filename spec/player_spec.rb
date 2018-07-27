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

  describe '#get_damaged' do
    it 'reduces player 1 HP by 10' do
      expect { player1.get_damaged }.to change { player1.hit_points }.by(-10)
    end
  end

end
