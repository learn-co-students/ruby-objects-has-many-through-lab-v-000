class Song

  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    self.genre = genre
    @name = name
    genre.add_song(self)
  end




end
