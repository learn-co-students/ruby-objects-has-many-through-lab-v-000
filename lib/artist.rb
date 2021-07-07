class Artist
  attr_accessor :songs, :name, :genre, :artist

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
    @songs.collect do |instance|
      instance.genre
    end
  end

end
