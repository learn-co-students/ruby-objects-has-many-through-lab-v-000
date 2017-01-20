class Genre
attr_accessor :name, :songs


def initialize(name)
  @name = name
  @songs = []
end# of initialize


def add_song(song)
  @songs << song
end# of add_song

def artists
@songs.collect {|song| song.artist}
end# of artists


def songs
  @songs
end# of songs


end# of class
