class Grid

  DEFAULT_SIZE = 10
  attr_reader :array
  attr_accessor :size

  def initialize(size=DEFAULT_SIZE)
    @size = size
    create_grid
  end

  def create_grid
    @array = Array.new(@size, :w).map{ |row| Array.new(@size, :w) }
  end

  def add(x, y, n)
    n.times do
      @array[y][x] = :s
      x += 1
    end
  end
end
