class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    
    genre.add_song(self)
    @genre = genre
  end
end
