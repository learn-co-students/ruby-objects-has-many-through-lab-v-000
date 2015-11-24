require 'pry'
class Artist


  attr_accessor :name, :songs, :genre, :artist

  def initialize(name)
    @name = name
    @songs = []

  end 

  def add_song(song)

    @songs << song
    song.artist = self

    @songs
  end 

  def genres
    @songs.collect {|song| song.genre}
  end 

  

end 