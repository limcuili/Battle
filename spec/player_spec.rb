describe Player do

  let(:player) { described_class.new('Tristan') }

  describe '#name' do
    it "displays a name" do
      expect(player.name).to eq ('Tristan')
    end
  end

end
