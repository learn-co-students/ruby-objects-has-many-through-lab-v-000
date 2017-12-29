require 'pry'

class Song

  attr_accessor :name, :songs, :artist, :genre

  def initialize(name, genre)
    # initializes with a name and a genre
    @name = name
    @genre = genre
    genre.add_song(self)
  end
  
end
