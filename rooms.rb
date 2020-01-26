class Rooms

attr_reader :name, :capacity
attr_accessor :playlist, :guests, :till


def initialize(name, capacity)
  @name = name
  @capacity = capacity
  @playlist = []
  @guests = []
  @till = 0
  @entry_fee = 10
end




def add_someone(guest)
  @guests << guest if capacity_check
  # binding.pry
  guest.wallet -= @entry_fee
  @till += @entry_fee
end

def check_out(guest)
  @guests.delete(guest)
end

def add_songs(song)
  @playlist.push(song)
end

def get_song_by_name(song_name)
@playlist.find{|song| song.title == song_name}

end

def capacity_check
  return @guests.count < @capacity

end

# def happy_to_find_favorite_song(guest, song)
#
#   guest.found_favorite_song if get_song_by_name(song)
# end

# def playlist_length
#
# end

end
