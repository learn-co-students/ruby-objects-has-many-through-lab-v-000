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

  def genres
    genres = []
    @songs.each do |song|
      genres << song.genre
    end
    return genres
  end
end