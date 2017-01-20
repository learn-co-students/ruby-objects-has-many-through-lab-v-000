class Song
attr_accessor :name, :genre, :artist

def initialize(name, genre)
  @name = name
  @genre = genre
  @artist = artist
end# of initialize


def add_song(song)
  artist = song.artist
  artist.songs << song
  artist.genres << genre 
end# of add_song


end# of class
