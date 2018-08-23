class Genre
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(genre_name)
    @name = genre_name
    @@all << self
  end
  
  def songs
    Song.all.select do |song|
      song.genre == self
    end 
  end 
  
  def artists
    songs.map do |single|
      single.artist
    end 
  end 
    

end 