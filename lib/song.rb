
class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist, genre )
      @name = name
      @genre=genre
       @artist = artist
       @@all << self
       @genre.add_song(self)
  end
  
  def self.all
    @@all << self
  end
  
 
  
  
  end
  
