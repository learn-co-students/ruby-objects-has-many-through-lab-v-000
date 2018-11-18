class Genre
  
  attr_accessor :name, :artist, :genre, :all
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all.each { |song| song.genre == @name }
  end
  
  def artists
    songs.collect { |song| song.artist }
  end
  
end