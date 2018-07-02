class Artist 

  attr_accessor :name, :all, :songs, :genres, :new_song
  
  @@all = []
  @songs = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)
 Song.new(name, self, genre)
  end 

  def songs 
    @songs
  end 
  

    




end 