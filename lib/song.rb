class Song
  attr_reader :name
  attr_accessor :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    self.genre.songs << self
  end
end
