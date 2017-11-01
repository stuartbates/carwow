require 'commands/vertical_segment_command'
require 'bitmap'

describe VerticalSegmentCommand do

  # V X Y1 Y2 C - Draw a vertical segment of colour C in column X between rows Y1

  subject(:command) { described_class.new(args) }

  let(:args) { [x, y1, y2, colour] }

  describe '#execute' do

    let(:bitmap) { Bitmap.new(4, 4) }
    let(:colour) { 'B' }
    let(:x) { 3 }
    let(:y1) { 1 }
    let(:y2) { 3 }

    it 'draws a vertical segment of colour C in column X between rows Y1 and Y2 inclusive' do
      result = command.execute(bitmap)
      expected = [['O', 'O', 'B', 'O'],['O', 'O', 'B', 'O'],['O', 'O', 'B', 'O'],['O', 'O', 'O', 'O']]
      expect(result.to_a).to eq(expected)
    end

  end

end
