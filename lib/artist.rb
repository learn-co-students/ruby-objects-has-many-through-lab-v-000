require 'pry'
class Artist
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self #needed to add :artist to class Song attr_accessor in order to make this work
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
