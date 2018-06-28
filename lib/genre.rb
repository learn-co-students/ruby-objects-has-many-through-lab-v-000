require 'pry'
class Genre 
   attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    @songs = [] 
  end 
  
 def songs 
  # binding.pry 
   @songs 
 end 
 
 def artists 
   @songs.map do |song|
     song.artist
   end.uniq 
 end 
 
end 