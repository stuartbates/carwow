require 'commands/create_bitmap_command'

describe CreateBitmapCommand do

  subject(:command) { described_class.new(args) }
  let(:args) { [columns, rows] }

  describe '#execute' do

    let(:columns) { 4 }
    let(:rows) { 3 }

    it 'creates and returns a bitmap of specified size' do
      expected_bitmap = [[0] * columns] * rows
      actual_bitmap = command.execute
      expect(actual_bitmap.to_a).to eq(expected_bitmap)
    end

  end

end
