class Song
  attr_accessor :genre, :artist
  attr_reader :name

  def initialize(name, genre)
    @name = name
    @genre = genre
    self.genre.add_song(self)
  end
end
