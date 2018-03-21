class Song
  attr_accessor :name, :artist
  attr_reader :genre

  def initialize(name, genre)
    @name = name
    self.genre = genre
  end

  def genre=(genre)
    @genre = genre
    @genre.add_song(self)
  end
end
