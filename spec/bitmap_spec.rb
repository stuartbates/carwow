require 'bitmap'

describe Bitmap do

  subject(:bitmap) { described_class.new(4, 3) }

  describe '#rows' do
    it 'returns the number of rows in the bitmap' do
      expect(bitmap.rows).to eq(3)
    end
  end

  describe '#columns' do
    it 'returns the number of columns in the bitmap' do
      expect(bitmap.columns).to eq(4)
    end
  end

  describe '[]=' do

    let(:x) { 1 }
    let(:y) { 1 }
    let(:colour) { 'R' }

    it 'sets the value at the corresponding pixel' do
      bitmap[x, y] = colour
      expect(bitmap.to_a[0][0]).to eq(colour)
    end

  end

  describe '[]' do

    let(:x) { 1 }
    let(:y) { 1 }
    let(:colour) { 'R' }

    before { bitmap[x, y] = colour }

    it 'sets the value at the corresponding pixel' do
      expect(bitmap[x, y]).to eq(colour)
    end

  end

  describe '#default_colour' do

    it 'defaults to white (O)' do
      expect(bitmap.default_colour).to eq('O')
    end

    context 'default colour set to red (2)' do

      subject(:bitmap) { described_class.new(4, 3, 'R') }

      it 'is set to red (2)' do
        expect(bitmap.default_colour).to eq('R')
      end

    end

  end

end
