class Plateau

  class << self

    def hello
      puts "Hello"
    end

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
      end
      puts Position.current
    end

  end
end
