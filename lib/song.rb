#songs belong to artists & a genre. This is the JOINER.
require 'pry'

class Song
  attr_accessor :name, :artist, :genre #need to be able to set/get name, genre, and artist.
  @@all = [] #set empty array to catch all instance of Song that are created

  def initialize(name, artist, genre) #pass in these 3 arguments to initialize a song by their parameters
    @name = name #setting instance var to local vars (local vars that are passed in and then saved as an instance)
    @artist = artist
    @genre = genre
    @@all << self #shovel all instances of this class into the empty array
  end

  def self.all #class method self.all will be a writer/printed to list out all of the instances stored in the @@all array
    @@all
  end
end
