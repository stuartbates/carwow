require 'command_file_parser'
require 'commands/base_command'
require 'custom_errors'

describe CommandFileParser do

  subject(:parser) { described_class.new(file_name) }

  let(:file_name) { 'spec/fixtures/inputs/create_new_bitmap.txt' }

  describe '#commands' do

    it 'returns an array of commands' do
      expect(parser.commands).to all(be_kind_of(BaseCommand))
    end

  end

  context 'file does not exist' do

    let(:file_name) { 'spec/fixtures/inputs/non_existent_file.txt' }

    it 'raises a CommandFileNotFound error' do
      expect { parser }.to raise_error(CommandFileNotFound)
    end

  end

end
