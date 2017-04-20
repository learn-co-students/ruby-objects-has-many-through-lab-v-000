#####new
#initializes with a name and an empty collection of songs
#####name
#has a name
#####add_song
#adds a new song to the artist's @songs array and tells that song that it belongs to the artist
#####songs
#has many songs
#####genres
#has many genres, through songs

class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect { |song| song.genre }
  end
end
