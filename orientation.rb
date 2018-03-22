class Orientation

  class << self

    def current=(orientation)
      @@current = orientation
    end

    def current
      @@current
    end

    def standardised_current
      standardise @@current
    end

    def init(orientation)
      all_orientations
      if !orientation.is_a? Numeric
        orientation = convert_to_integer(orientation)
      end
      @@current = orientation
    end

    def result
      convert_to_letter @@current
    end

    def update(direction)
      @@current = standardise(@@current + direction)
    end

    private

    def convert_to_integer(orientation)
      return orientation if orientation.is_a? Numeric
      standardise(@@all_orientations.index(orientation))
    end

    def convert_to_letter(orientation)
      return orientation if orientation.is_a? String
      @@all_orientations[orientation]
    end

    def standardise(integral_orientation)
      # retains orientation in [-1..2]
      (integral_orientation + 1) % (@@all_orientations.length) - 1
    end

    def all_orientations
      @@all_orientations = ["N", "E", "S", "W"]
    end

  end
end
