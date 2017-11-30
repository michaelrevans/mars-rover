class Orientation

  class << self

    def current_orientation=(orientation)
      @@current_orientation = orientation
    end

    def current_orientation
      @@current_orientation
    end

    def init(orientation)
      all_orientations
      if !orientation.is_a? Numeric
        orientation = convert_to_integer(orientation)
      end
      @@current_orientation = orientation
    end

    def update(direction)
      @@current_orientation += direction
    end

    private

    def convert_to_integer(orientation)
      return orientation if orientation.is_a? Numeric
      standardise(@@all_orientations.index(orientation))
    end

    def convert_to_letter
      return orientation if orientation.is_a? String
      @@all_orientations[orientation]
    end

    def standardise(integral_orientation)
      (integral_orientation + 1) % @@all_orientations.length - 1
    end

    def all_orientations
      @@all_orientations = ["N", "E", "S", "W"]
    end

  end
end
