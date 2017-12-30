class Song
attr_accessor :name, :artist, :genre

  def initialize(name, genre_i)
    self.name = name
    self.genre = genre_i
    genre_i.add_song(self)
  end

end