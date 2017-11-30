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

  end

end
