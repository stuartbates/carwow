class Bitmap

  attr_reader :rows, :columns, :bitmap, :default_colour

  def initialize(columns, rows, default_colour = 0)
    @rows = rows.to_i
    @columns = columns.to_i
    @default_colour = default_colour
    @bitmap = generate_bitmap
  end

  def to_a
    bitmap
  end

  def []=(row, column, value)
    row_index = row - 1
    column_index = column - 1
    bitmap[row_index][column_index] = value
  end

  def [](row, column)
    row_index = row - 1
    column_index = column - 1
    bitmap[row_index][column_index]
  end

  private

  def generate_bitmap
    Array.new(rows) do
      Array.new(columns) { default_colour }
    end
  end

end
