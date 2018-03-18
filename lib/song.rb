class Song
  
  attr_accessor :title, :artist, :genre
  
  def initialize(title, genre)
    @title = title
    @artist = artist
    @genre = genre
    genre.add_song(self)
  end
  
end