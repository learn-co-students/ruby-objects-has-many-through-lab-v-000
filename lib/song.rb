class Song

  attr_accessor :artist,:genre

def initialize(name,genre)
  @name= name
  genre.add_song(self)
  @genre= genre


end

end
