require 'commands/base_command'
require 'bitmap'

class CreateBitmapCommand < BaseCommand

  attr_reader :args

  def initialize(args)
    @args = args
  end

  def execute
    Bitmap.new(columns, rows)
  end

  def columns
    args[0]
  end

  def rows
    args[1]
  end

end
