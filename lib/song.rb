class Song

attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    self.genre.songs << self
    @artist = ""
  end

end
