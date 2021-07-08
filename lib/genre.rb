require 'pry'
class Genre
  attr_accessor :name, :genre
  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @songs.collect do |each_song|
      each_song.artist

    end
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.genre = self
  end

end
