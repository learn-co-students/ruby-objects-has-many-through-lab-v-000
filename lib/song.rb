class Song
  attr_accessor :genre, :artist
  attr_reader :name

  def initialize(name, genre)
    @name = name
    self.genre = genre
    self.genre.songs << self
  end
end
