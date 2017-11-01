require 'commands/base_command'
require 'bitmap'

class CreateBitmapCommand < BaseCommand

  def execute(existing = nil)
    Bitmap.new(columns, rows)
  end

  def columns
    args[0]
  end

  def rows
    args[1]
  end

end
