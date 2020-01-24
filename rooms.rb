class Rooms

attr_reader :name, :capacity
attr_accessor :playlist, :guests


def initialize(name, capacity)
  @name = name
  @capacity = capacity
  @playlist = []
  @guests = []
end




def add_someone(guest)
  @guests << guest
end

def check_out(guest)
  @guests.delete(guest)
end

def add_songs(song)
  @playlist.push(song)
end

def get_song_by_name(song_name)
  result = @playlist.find{|song| song.title == song_name}

end

def add_someone_new(new_guest)
  return if @guests.count >= @capacity
  add_someone(new_guest)
end

end
