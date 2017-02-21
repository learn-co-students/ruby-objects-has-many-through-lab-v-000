class Song

attr_accessor :artist, :genre, :name #need :artist!

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self) #had to go back to the previous page for this. Damn. Calls .add_song from the Genre class.
  end
  
end
