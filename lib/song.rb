class Song
  attr_accessor :name, :artist, :genre

  #initializes with a name and genre
  #genre method makes Song belong to a genre
  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
end
