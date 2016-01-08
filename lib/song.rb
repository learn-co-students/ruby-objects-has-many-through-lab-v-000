class Song
  attr_accessor :name, :artist, :genre

  def initialize(names, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end

end