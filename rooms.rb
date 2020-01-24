class Rooms

attr_reader :name, :capacity
attr_accessor :playlist, :guests


def initialize(name, capacity)
  @name = name
  @capacity = capacity
  @playlist = []
  @guests = []
end

end
