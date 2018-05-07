class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name, @genre = name, genre
    @genre.songs << self
  end

end
