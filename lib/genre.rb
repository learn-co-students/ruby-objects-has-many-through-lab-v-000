require 'pry'

# create Genre class 
class Genre
# create attr_accessor to access name
  attr_accessor :name
  
# create initialize method w/(name) argument
  def initialize(name)
  # - initialize with empty collection of songs
    @name = name
    @songs = []
  end 
# create name method - no argument - this is above using attr_accessor :name
  # - this method will display the name 
# add the method add_songs(song) to connect songs to genre
  
  # create songs method - no arguments
  # - this method will display the songs array contents 
  def songs 
    @songs
  end 
  
  def add_song(song)
    @songs << song
  end 
    # create artists method - no arguments 
  def artists
  # - this method will show the connection between songs and artists 
    self.songs.collect do |f| 
      f.artist
  end
  end 
end 