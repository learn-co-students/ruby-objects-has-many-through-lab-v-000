class Artist
  attr_accessor :name, :songs, :genres
  # attr_reader :songs 
  
  @@all =  []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = [ ]
    @genres = [ ]
  end 
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name,self,genre)
    songs << song
    song
  end
  
  def songs
    @songs
  end

  
  
  
  
  
  
  
  
end