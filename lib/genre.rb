require "pry"
class Genre
  attr_accessor :name, :songs, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song = Song.new(song.name, song.artist, song.genre)
    @songs << song
    song.genre = self
  end
  
  def artists
    
  end
end
