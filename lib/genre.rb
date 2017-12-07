require 'pry'

# create Genre class 
class Genre
# create attr_accessor to access name
  attr_accessor :name, :songs
  
# create initialize method w/(name) argument
  def initialize(name)
  # - initialize with empty collection of songs
    @name = name
    @songs = []
  end 
# create name method - no argument - this is above using attr_accessor :name
  # - this method will display the name 
# add the method add_songs(song) to connect songs to genre
  def add_songs(song)
    @songs << song
  end 
# create songs method - no arguments
  def songs
  # - this method will display the songs array contents 
    @songs
  end
    # create artists method - no arguments 
  # - this method will show the connection between songs and artists 
  
end 