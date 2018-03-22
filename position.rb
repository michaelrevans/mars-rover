class Position
  class OutOfXBounds < StandardError; end
  class OutOfYBounds < StandardError; end

  class << self

    def init(x_position, y_position)
      @@x_position = x_position
      @@y_position = y_position
    end

    def current
      return @@x_position, @@y_position
    end

    def update(x_movement, y_movement)
      @@x_position += x_movement
      @@y_position += y_movement
    end

    def moderate(breadth, length)
      @@x_position = [[breadth, @@x_position].min, 0].max
      @@y_position = [[length, @@y_position].min, 0].max
    end

    def result
      current
    end

  end

end
