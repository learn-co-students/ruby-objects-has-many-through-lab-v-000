#####new
#initializes with a name and an empty collection of songs
#####name
#has a name
#####songs
#has many songs
#####artists
#has many artists, through songs

class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def artists
    @songs.collect { |song| song.artist }
  end
end
