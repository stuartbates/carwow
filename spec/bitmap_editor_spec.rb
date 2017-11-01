require 'bitmap_editor'

describe BitmapEditor do

  subject(:editor) { described_class.new(input_file) }

  let(:input_file) { 'spec/fixtures/inputs/full_commands.txt' }
  let(:output_file) { 'spec/fixtures/outputs/full_commands.txt' }

  describe '#run' do

    it 'outputs correct bitmap contents to STDOUT' do
      expected = IO.read(output_file)
      expect { editor.run }.to output(expected).to_stdout
    end

  end

end
