require 'pry'

class Song

  attr_accessor :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self) unless genre.songs.include?(self)
  end
  
end
