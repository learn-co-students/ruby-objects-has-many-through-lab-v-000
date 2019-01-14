class Artist 
  attr_accessor :name, :songs, :genres, :artist
  
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
   song = Song.new(name, self, genre)
   @songs << song
   song
  end 
  
  def songs 
    @songs.select {|song| song.artist} 
  end
  
  def genres 
    @songs.collect {|song| song.genre}
  end
  
end 