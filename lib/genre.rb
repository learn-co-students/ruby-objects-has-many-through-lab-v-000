class Genre 
  attr_accessor :name, :artist, :genre
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_song(name, artist)
    song = Song.new(name, artist, self)
    song.genre = self 
  end 
  
  def songs 
    Song.all.select do |song|
      song.genre == self 
    end 
  end 
  
  def artists 
    Song.all.collect do |song|
      song.artist 
    end 
  end
end 