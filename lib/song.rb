class Song

  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    self.name = name
    self.genre = genre  
  end

  def genre=(genre)
    @genre = genre
    genre.add_song(self)
  end
  
end