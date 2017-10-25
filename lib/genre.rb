class Genre
#has a name
  attr_accessor :name

#initializes with a name and an empty collection of songs
  def initialize(name)
    @name = name
    @songs = []
  end

#has many songs
  def songs
    @songs
  end
#adds a song to the @songs array for each genre
  def add_song(song)
    @songs << song
  end

#has many artists, through songs
  def artists
    @songs.collect do |song|
      song.artist
    end
  end
end
