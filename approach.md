```ruby
class Rover
  self
  def move_forward; end
  def turn_right; end
  def turn_left; end
end

class Plateau
  self
  def initialize; end
  def control_rover; end
  @@length
  @@breadth
end

class Position
  self
  def initialize; end
  def update; end
  @@x_position
  @@y_position
end

class Orientation
  self
  def initialize; end
  def update; end
  private
  def convert_to_integer; end
  def convert_to_letter; end
  def normalize; end # dir + 1 = dir mod @all_orientations.length - 1
  @@current_orientation # integer -1 - 3
  @@all_orientations # ["N", "E", "S", "W"]
end
```
