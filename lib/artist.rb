require 'pry'
class Artist 
  attr_accessor :name, :genre, :songs
  
  @@all = []
  @songs = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def new_song(song_name, genre)
    Artist.new(song_name, genre)
    # @genre = []
    # @new_song = [song_name, genre] 
  end
  
  # def songs 
    
  # end

  # def genres 
    
  # end  
  
end   
  