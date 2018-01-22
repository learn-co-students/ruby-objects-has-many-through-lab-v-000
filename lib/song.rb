class Song

  attr_accessor :name, :artist, :genre

  def initialize(name,genre) #song gets instantiated with name and genre
    @name = name
    @genre = genre
    genre.add_song(self) #when song is instantiated it is added to the collection of genres
  end
end