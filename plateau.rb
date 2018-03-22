class Plateau

  class << self

    def init(breadth, length)
      @breadth = breadth
      @length = length
    end

    def start(x_start, y_start, orientation_start)
      Position.init(x_start, y_start)
      Orientation.init(orientation_start)
    end

    def move_rover(command_series)
      command_series.chars.each do |command|
        Rover.execute_command(command)
        confine
        print Position.result, " "
        print Orientation.result, "\n"
      end
      puts Position.result
      puts Orientation.result
    end

    private

    def confine
      Position.moderate(@breadth, @length)
    end

  end
end
