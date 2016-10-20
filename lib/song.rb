class Song
  attr_accessor :artist
  attr_reader :name, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    self.genre.add_song(self)
  end

end
