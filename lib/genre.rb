
require 'pry'
class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(songs)
    @songs << songs
  end

  def songs
#For this to work  genre.add_song(self) has to be added in song initialize
    @songs
  end


  def artists
    #has many artists, through songs
    self.songs.collect {|song| song.artist}
  end
end
