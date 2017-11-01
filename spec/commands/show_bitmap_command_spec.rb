require 'commands/show_bitmap_command'
require 'bitmap'

describe ShowBitmapCommand do

  describe 'execute' do

    subject(:command) { described_class.new }

    let(:bitmap) { Bitmap.new(5, 5) }
    let(:output_file) { 'spec/fixtures/outputs/empty_5_by_5.txt' }

    it 'outputs the bitmap to STDOUT' do
      expected = IO.read(output_file)
      expect { command.execute(bitmap) }.to output(expected).to_stdout
    end

  end

end
