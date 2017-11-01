require 'commands/create_bitmap_command'
require 'commands/colour_pixel_command'
require 'commands/vertical_segment_command'
require 'commands/horizontal_segment_command'
require 'commands/clear_bitmap_command'
require 'commands/show_bitmap_command'

class CommandMapper

  def [](key)
    commands[key]
  end

  private

  def commands
    {
      'I' => CreateBitmapCommand,
      'L' => ColourPixelCommand,
      'V' => VerticalSegmentCommand,
      'H' => HorizontalSegmentCommand,
      'C' => ClearBitmapCommand,
      'S' => ShowBitmapCommand
    }
  end

end
