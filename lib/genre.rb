require 'pry'
class Genre
  attr_accessor :artists, :songs, :name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, artist)
    song = Song.new(name, artist, self)
    @songs << song
    song.genre = self
    song
  end
  
  def songs
    Song.all.map {|song| song if song.genre == self}
  end
  
  def artists
    allArtists = Song.all.map {|song| song.artist if song.genre == self}
    allArtists.uniq
  end
end