class Guest

attr_reader :name, :age, :favorite_song
attr_accessor :wallet

def initialize(name, wallet, age, favorite_song)
  @name = name
  @wallet = wallet
  @age = age
  @favorite_song = favorite_song

end

def found_favorite_song
  #title = song.title
  return "OMG I love This song!"
end
# def happy_to_find_favorite_song(guest,song)
#   guest.found_favorite_song if get_song_by_name(song)
# end

end
