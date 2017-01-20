class Artist
attr_accessor :name, :genres


def initialize(name)
  @name = name
  @songs = []
  @genres = []
end# of initialize


def add_song(song)
  @songs << song
  song.artist = self
  @genres << song.genre 
end#of add_song


def songs
  @songs
end# of songs


def genres
  @genres
end# of genres


end# of class
