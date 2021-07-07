class Song
  attr_accessor :name, :artist, :genre

  def initialize (name, genre)
    @name = name
    @genre = genre
    self.add_genre(genre)
  end

  def add_genre(genre)
    genre.songs << self
  end
end
