class Song
attr_accessor :name, :genre, :artist

def initialize (name, genre)
  @name = name
  @genre = genre.add_song(self)
end


end
