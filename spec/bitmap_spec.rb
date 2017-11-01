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

end
