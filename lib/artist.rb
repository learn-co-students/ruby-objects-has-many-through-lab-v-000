require 'pry'
class Artist
  attr_accessor :name, :song, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    songs.collect do |song|
      song.genre
    end #songs.collect
  end #def genres

end #class Artist
