require 'pry'
class Song
  attr_accessor :artist, :genre
  attr_reader :name

  def initialize(name,genre)
    @name=name
    @genre=genre
    self.genre.add_song(self)

  end

  def add_artist(new_artist)
    self.artist=new_artist
  end
  
end