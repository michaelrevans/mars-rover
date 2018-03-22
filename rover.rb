class Rover

  class << self

    def execute_command(command)
      move_forwards if command == "M"
      turn_right if command == "R"
      turn_left if command == "L"
    end

    private

    def move_forwards
      curr_ori = Orientation.standardised_current
      x_movement = curr_ori % 2 == 0 ? 0 : curr_ori
      y_movement = curr_ori % 2 == 1 ? 0 : 1 - curr_ori
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
