require 'commands/clear_bitmap_command'
require 'bitmap'

describe ClearBitmapCommand do

  subject(:command) { described_class.new([]) }

  let(:bitmap) { Bitmap.new(3, 3) }

  describe '#execute' do

    # Clears the table, setting all pixels to white (O).

    before do
      bitmap[1, 1] = '1'
      bitmap[2, 2] = '2'
      bitmap[3, 3] = '3'
    end

    it 'reverts all pixels back to their default colour' do
      result = command.execute(bitmap)
      expected = [[0] * 3] * 3
      expect(result.to_a).to eq(expected)
    end

  end

end
