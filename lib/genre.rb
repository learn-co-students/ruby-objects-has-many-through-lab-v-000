class Genre 
  @@all = []
  attr_accessor :name  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  def self.all 
    @@all
  end 
  def new_song(name,artist)
    song = Song.new(name,artist)
    song.genre = self
  end 
  def songs 
    @@all.select do |song|
    song.genre == self
    end 
  end
  def artists
    @@all.select do |song|
      genre.artist
    end 
  end 

end 