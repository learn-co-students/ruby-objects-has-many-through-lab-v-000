# Songs 'belong to' Artists, Genres
# Artist 'has many' Songs, Genres
# Genres 'has many' Songs, Artists

class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    # Beyonce.add_song(halo)
    @songs << song
    # Tell that song it belongs to artist 'beyonce'
    song.artist = self
  end

  def genres
    @songs.collect { |song| song.genre }
  end

  def songs
    @songs
  end

end
