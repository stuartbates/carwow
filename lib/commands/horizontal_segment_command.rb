require 'commands/base_command'
require 'commands/colour_pixel_command'

class HorizontalSegmentCommand < BaseCommand

  def execute(bitmap)
    (x1..x2).inject(bitmap) do |bitmap, x|
      ColourPixelCommand.new([x, y, colour]).execute(bitmap)
    end
  end

  private

  def x1
    args[0]
  end

  def x2
    args[1]
  end

  def y
    args[2]
  end

  def colour
    args[3]
  end

end
