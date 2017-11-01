require 'command_mapper'

class CommandFileParser

  attr_reader :file_name

  def initialize(file_name)
    @file_name = file_name
  end

  def commands
    lines = IO.readlines(file_name)
    lines.map do |line|
      parts = line.strip.split(/\s+/)
      key, *args = parts
      command_mapper[key].new(args)
    end
  end

  def command_mapper
    @command_mapper ||= CommandMapper.new
  end

end
