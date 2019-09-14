class Artist

  attr_accessor :name

#when you create an artist, you give it a name and an empty array of songs
  def initialize(name)
    @name = name
    @songs = []
  end

  #something manually calls this function, it is not called when a song or genre is instantiated
  #when this method is called, a song instance is passed in, added to the song array, and the song instance's artist attribute is assigned the artist instance that called this method.
  def add_song(song)
    self.songs << song
    song.artist = self
    #this is where the artist attribute gets assigned for a song
  end

  def songs
    @songs
  end

  #the only way that an aritst knows about a genre is through the song instance
  def genres()
    @songs.collect do |song|
      song.genre
    end
  end

end
