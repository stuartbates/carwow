require 'command_mapper'
require 'commands/create_bitmap_command'

describe CommandMapper do

  subject(:mapper) { described_class.new }

  describe '#[]' do

    context 'key maps correctly to a Command class' do

      it 'returns the constant associated with this key' do
        expect(mapper['I']).to eq(CreateBitmapCommand)
      end

    end

  end

end
