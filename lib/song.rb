class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.songs << self

  end

  def add_artist
    artists.songs << self
  end


end