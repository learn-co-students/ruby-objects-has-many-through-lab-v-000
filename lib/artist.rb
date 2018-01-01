class Artist
  attr_accessor :name

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    #a song is passed in as an argument and added to an artist's @songs array
    @songs << song
    #song's artist attribute is set equal to the instance of the artist that the #add_song is being called on,
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    #method iterates over the @songs array
    self.songs.collect do |song|
      # calls the #genre method on each song in order to collect the genre that is associated to that song
      song.genre
    end
  end
end
