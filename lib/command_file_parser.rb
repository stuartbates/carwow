require 'command_mapper'
require 'custom_errors'

class CommandFileParser

  attr_reader :file_name, :commands

  def initialize(file_name)
    @file_name = file_name
    ensure_file_exists
    @commands = parse_commands
  end

  private

  def ensure_file_exists
    raise CommandFileNotFound unless File.exists?(file_name)
  end

  def parse_commands
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
