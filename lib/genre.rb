class Genre
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize
    @name = name
    @@all << self
    @songs = []
  end
  
  def songs
    Song.all.select { |n| n.genre == self }
  end
  
  def artists
    self.songs.collect { |n| n.genre == self }
  end
end

