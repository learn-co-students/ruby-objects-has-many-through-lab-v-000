class Song
  attr_accessor :genre#, :artist

  def initialize(name, genre)
    @name = name
    self.genre = genre
    genre.add_song(self)
  end

end
