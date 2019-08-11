class Song
  attr_accessor :name, :genre, :artist

  def initialize(n, g)
    @name = n
    @genre = g
    @genre.songs << self
  end
end
