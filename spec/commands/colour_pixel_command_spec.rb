require 'commands/colour_pixel_command'
require 'bitmap'

describe ColourPixelCommand do

  subject(:command) { described_class.new(args) }

  let(:args) { [x, y, colour] }
  let(:x) { 1 }
  let(:y) { 2 }
  let(:colour) { 1 }
  let(:bitmap) { Bitmap.new(5, 5) }

  describe '#execute' do

    # L X Y C - Colours the pixel (X,Y) with colour C.
    it 'colours the pixel at the specified coordinates' do
      expect { command.execute(bitmap) }.to change { bitmap[y, x] }.from(0).to(colour)
    end

  end

end
