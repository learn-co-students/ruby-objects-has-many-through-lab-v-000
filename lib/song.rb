class Song 
  # class variable 
  @@all = []
  
  # attribute accessors
  attr_accessor :name, :artist, :genre
  
  # class methods
  def self.all
    @@all
  end
  
  # instance methods
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    @@all << self
  end
end