require 'commands/base_command'

class ColourPixelCommand < BaseCommand

  def execute(bitmap)
    bitmap[y, x] = colour
    bitmap
  end

  private

  def x
    args[0]
  end

  def y
    args[1]
  end

  def colour
    args[2]
  end

end
