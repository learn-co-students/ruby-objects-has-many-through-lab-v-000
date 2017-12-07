require 'pry'

# create Song class 
class Song
# create attr_accessor to access data of name and genre 
  attr_accessor :name, :genre, :artist
# create initialize method w/(name , genre) arguments
  def initialize(name, genre) 
    @name = name
    @genre = genre
    genre.add_song(self)
  end 
# create genre method - no arguments 
  # - this method will display the genre type 

# create artist method - no arguments 
  # - this method will show the connection between artist and genre 
  
end 