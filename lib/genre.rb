class Genre 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @artist = artist
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, artist)
    Song.new(name, artist, self)
  end 
  
  def songs 
    Song.all.select do |song|
      song.genre == self 
    end 
  end 
  
  def artists 
    songs.collect do |song|
      song.artist 
    end
  end 
  
end 