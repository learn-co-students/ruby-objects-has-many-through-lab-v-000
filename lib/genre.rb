class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song) #takes in an argument of a song and adds that song to the genre's collection of songs
    @songs << song  #now the Genre.add_song method can be used in the Song class' initialize method to tell the genre that it owns the given song.
  end

  def songs
    @songs #returns songs array
  end

  def artists #iterates over the genre's collection of songs and collects the artist that owns each song.
    @songs.collect do |song|
      song.artist
    end
  end

end
