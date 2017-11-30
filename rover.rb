class Rover

  class << self

    def execute_command(command)
      move_forwards if command == "M"
      turn_right if command == "R"
      turn_left if command == "L"
    end

    private

    def move_forwards
      x_movement = (Orientation.current_orientation unless Orientation.current_orientation % 2 == 0) || 0
      y_movement = (1 - Orientation.current_orientation unless Orientation.current_orientation + 1 % 2 == 0) || 0
      Position.update(x_movement, y_movement)
    end

    def turn_right
      Orientation.update(1)
    end

    def turn_left
      Orientation.update(-1)
    end

  end
end
