class Genre 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, artist)
    Song.new(name, self, artist)
  end 
  
  def songs 
    Song.all.select do |songs|
      songs.genre == self 
    end 
  end 
  
  def artists 
    songs.map do |song|
      song.artist 
    end 
  end 
      
  
end 