class Song
  attr_accessor :artist, :genre, :name
  def initialize(name, genre)
    @genre=genre
    @name=name
    @genre.add_song(self)
  end
end
