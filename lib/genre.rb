class Genre 
  attr_accessor :song, :artist, :name, :genre 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @genre = genre
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end   
  
  def new_song(name, artist) 
    Song.new(name, artist, self)    
  end 
  
  def songs 
    Song.all.select do |s|
      s.genre == self
    end
  end 
  
  def artists
    songs.map do |song|
        song.artist
    end 
  end 
  
  
end 