class Song
attr_accessor :artist, :genre
attr_writer :name

  def initialize(name, genre)
    self.name = name
    self.genre = genre
    self.genre.songs << self
  end

end