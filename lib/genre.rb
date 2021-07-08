require "pry"
class Genre 

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def songs
    x = []
    Song.all.each do |song|
      if song.genre == self 
        x << song
      end
    end
    x
  end 
  
  def self.all 
    @@all
  end 
  
  def artists
    songs.map do |song|
      song.artist
    end
  end 
  
end 

#genre = waiter
#song = meal
#artist = customer