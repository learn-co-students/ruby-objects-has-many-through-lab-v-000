#The Genre model:
#A genre should be initialized with a name and an empty @songs array.
#The Genre class needs an instance method, #add_song, that takes in an argument of a song and adds that song to the genre's collection of songs. Now you can use the Genre#add_song method in the Song class' initialize method to tell the genre that it owns the given song.
#The Genre class needs an instance method, #songs, that returns the @songs array.
#The Genre class needs an instance method, #artists, that iterates over the genre's collection of songs and collects the artist that owns each song.
class Genre
  attr_accessor :name
GENRE = []

  def initialize(name)
    @name = name
    @songs = []
    GENRE << self.name
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def artists
    self.songs.collect {|song| song.artist}
  end
end
