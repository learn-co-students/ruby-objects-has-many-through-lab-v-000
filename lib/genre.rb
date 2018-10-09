class Genre
  @@all = []
  
  attr_accessor :name, :artist, :songs, :genre
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end