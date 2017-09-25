class Song
attr_accessor :artist, :name, :genre

def initialize(name, genre)
  @name = name
  @genre = genre
  @songs = []
  genre.add_song(self)
end

end
