class Song
  attr_reader :genre
  attr_accessor :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
  end
end


