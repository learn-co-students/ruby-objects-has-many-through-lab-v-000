class Song
attr_accessor :name, :artist, :genre

@songs = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
end

def all
  @all
end

end
