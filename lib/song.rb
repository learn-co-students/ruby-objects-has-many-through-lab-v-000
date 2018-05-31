

class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@all = []
  
  def self.all
    @@all 
  end
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@all << self
    add_to_genre
  end

  def add_to_genre
  	@genre.artists << @artist
  	@genre.songs << self
  end


end
 