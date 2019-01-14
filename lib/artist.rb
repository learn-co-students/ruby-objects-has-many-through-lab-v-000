class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_song(name, genre)
   Song.new(name, genre)
   artist.song = self
  end 
  
  def songs 
    @songs 
  end
  
  def genres 
    @songs.genre
  end
  
end 