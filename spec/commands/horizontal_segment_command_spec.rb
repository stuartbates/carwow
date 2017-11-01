require 'commands/horizontal_segment_command'
require 'bitmap'

describe HorizontalSegmentCommand do

  # V X Y1 Y2 C - Draw a vertical segment of colour C in column X between rows Y1

  subject(:command) { described_class.new(args) }

  let(:args) { [y, x1, x2, colour] }

  describe '#execute' do

    let(:bitmap) { Bitmap.new(4, 4) }
    let(:colour) { 8 }
    let(:y) { 3 }
    let(:x1) { 2 }
    let(:x2) { 4 }

    it 'draws a vertical segment of colour C in column X between rows Y1 and Y2 inclusive' do
      result = command.execute(bitmap)
      expected = [[0, 0, 0, 0],[0, 0, 0, 0],[0, 8, 8, 8],[0, 0, 0, 0]]
      expect(result.to_a).to eq(expected)
    end

  end

end
