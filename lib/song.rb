class Song
  attr_accessor :name, :genre, :artist

def initialize(name, genre)
  @name = name
  @genre = genre
  genre.add_song(self)
end

def songs
  @songs
end

def add_song(song)
  @songs << song
end
end
