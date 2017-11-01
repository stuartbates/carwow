require 'command_file_parser'

class BitmapEditor

  def initialize(file_name)
    @commands = CommandFileParser.new(file_name).commands
  end

  def run
    bitmap = @commands.inject(nil) do |bitmap, command|
      command.execute
    end
    bitmap.to_a.each do |row|
      puts row.join
    end
  end

end
