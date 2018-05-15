class Artist
  @@all = []

  attr_accessor :name, :songs, :genres
  def initialize(name)
    @name = name
    @@all << self #in order to know about all instances seperately all
    #needs to be a class variable
    @songs = [] #the songs and genres belong to one artist
    @genres = []
  end

  def self.all
    @@all
  end

  def new_song(name,genre)
      new_song = Song.new(name,self,genre) #artist needs to know about this song
      @songs << new_song
      @genres << genre
      new_song #the "proof" of it being known is it being returned
  end
end
