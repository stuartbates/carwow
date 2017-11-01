require 'commands/base_command'

class ShowBitmapCommand < BaseCommand

  def execute(bitmap)
    bitmap.to_a.each { |row| puts row.join }
  end

end
