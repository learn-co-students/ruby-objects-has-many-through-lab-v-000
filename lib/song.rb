class Song

  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    genre.add_song(self)
  end

end