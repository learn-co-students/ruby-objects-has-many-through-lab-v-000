class Song
  attr_accessor :name, :genre, :artist
  
  # Song #new initializes with a name and a genre
  # Song #genre belongs to a genre
  # Song #artist belongs to a artist
  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
end
