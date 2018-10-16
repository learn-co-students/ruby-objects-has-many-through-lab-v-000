class Artist 
  
  attr_accessor :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
 end 
  
  def new_song(name, genre) 
   new.artist.Song
  end 
  
  def songs
    Song.all.select do |song|
      song.artist == self
   end
  end 
  
  def genres 
    Genre.all.select do |genre|
      genre.artist == self
    end
  end 
  
  
end 
