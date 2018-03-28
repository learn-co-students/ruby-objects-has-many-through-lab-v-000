require 'pry'

class Artist
  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs.each {|song| song}
  end

  def genres
    genres = []
    @songs.each {|song| genres << song.genre}
    genres
  end


end
