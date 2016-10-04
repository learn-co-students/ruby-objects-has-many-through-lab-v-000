class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self) #Adds the song to the instance of Class genre related to genre initialized
  end
end
