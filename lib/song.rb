class Song
  @@all = []
  
  attr_accessor :name, :artist, :genre, :songs

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all 
    
  end


  
end