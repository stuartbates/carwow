require 'command_mapper'
require 'commands/create_bitmap_command'
require 'commands/colour_pixel_command'
require 'commands/vertical_segment_command'
require 'commands/horizontal_segment_command'
require 'commands/clear_bitmap_command'
require 'commands/show_bitmap_command'

describe CommandMapper do

  subject(:mapper) { described_class.new }

  describe '#[]' do

    context 'command I requested' do
      it 'returns the Create Bitmap Command' do
        expect(mapper['I']).to eq(CreateBitmapCommand)
      end
    end

    context 'command L requested' do
      it 'returns the Colour Pixel Command' do
        expect(mapper['L']).to eq(ColourPixelCommand)
      end
    end

    context 'command V requested' do
      it 'returns the Vertical Segment Command' do
        expect(mapper['V']).to eq(VerticalSegmentCommand)
      end
    end

    context 'command H requested' do
      it 'returns the Horizontal Segment Command' do
        expect(mapper['H']).to eq(HorizontalSegmentCommand)
      end
    end

    context 'command C requested' do
      it 'returns the Clear Bitmap Command' do
        expect(mapper['C']).to eq(ClearBitmapCommand)
      end
    end

    context 'command S requested' do
      it 'returns the Show Bitmap Command' do
        expect(mapper['S']).to eq(ShowBitmapCommand)
      end
    end

  end

end
