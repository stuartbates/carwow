require 'pry'

class Bitmap

  attr_reader :rows, :columns, :bitmap

  def initialize(columns, rows)
    @rows = rows.to_i
    @columns = columns.to_i
    @bitmap = generate_bitmap
  end

  def to_a
    bitmap
  end

  private

  def generate_bitmap
    Array.new(rows) do
      Array.new(columns) { '0' }
    end
  end

end
