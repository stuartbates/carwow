require 'command_file_parser'

class BitmapEditor

  def initialize(file_name)
    @commands = CommandFileParser.new(file_name).commands
  end

  def run
    @commands.inject(nil) do |bitmap, command|
      command.execute(bitmap)
    end
  end

end
