require 'player'

describe Player do
  subject(:sonny) { Player.new('Sonny') }

  describe '#name' do
    it 'returns the name' do
      expect(sonny.name).to eq 'Sonny'
    end
  end
end