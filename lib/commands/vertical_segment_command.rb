require 'commands/base_command'
require 'commands/colour_pixel_command'

class VerticalSegmentCommand < BaseCommand

  def execute(bitmap)
    (y1..y2).inject(bitmap) do |bitmap, y|
      ColourPixelCommand.new([x, y, colour]).execute(bitmap)
    end
  end

  private

  def y1
    args[1]
  end

  def y2
    args[2]
  end

  def x
    args[0]
  end

  def colour
    args[3]
  end

end
