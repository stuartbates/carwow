require 'commands/create_bitmap_command'

class CommandMapper

  def [](key)
    commands[key]
  end

  private

  def commands
    {
      'I' => CreateBitmapCommand
    }
  end

end
