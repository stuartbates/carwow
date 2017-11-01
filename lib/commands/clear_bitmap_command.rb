require 'commands/base_command'

class ClearBitmapCommand < BaseCommand

  def execute(bitmap)
    reset_to_default(bitmap)
  end

  private

  def reset_to_default(bitmap)
    bitmap.rows.times do |row_index|
      bitmap.columns.times do |column_index|
        bitmap[row_index, column_index] = bitmap.default_colour
      end
    end
    bitmap
  end

end
