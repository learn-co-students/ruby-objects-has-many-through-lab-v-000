class Song
  attr_reader :name
  attr_accessor :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
  end

  def artist(artist)
    @artist = artist
  end



end
