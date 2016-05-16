class Song

  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    self.name = name
    self.genre = genre
    self.genre.add_song(self)
  end

end