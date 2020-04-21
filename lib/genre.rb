class Genre 
  
  attr_accessor :name
  
  @@all = [ ]
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def songs 
    Song.all.select {|item| item.genre == self}
  end
  
  def self.all
    @@all
  end 
  
  def artists
    artist_list = [ ]
    self.songs.each {|item| artist_list << item.artist}
    artist_list
  end
end