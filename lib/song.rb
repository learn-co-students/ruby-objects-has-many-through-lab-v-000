class Song

  attr_accessor :name, :genre, :artist

#initializes with a name and a genre
  def initialize(name, genre)
    @name = name
    @genre = genre
#belongs to a genre and artist
    genre.add_song(self)
  end

end
