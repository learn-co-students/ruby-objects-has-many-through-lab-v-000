class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name, @genre = name, genre
    genre.add_song self
  end
end