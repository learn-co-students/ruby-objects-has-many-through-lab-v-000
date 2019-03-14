class Artist 
  attr_accessor :name, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all 
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name)
    @songs << song
    Artist.new_song(name, genre)
  end
  
  def songs
    @songs
  end
  
end