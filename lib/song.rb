class Song
=begin
  Variables
    name
    genre
    artist
=end
  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self
  end

end
