class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

  def add_song(song)
    @songs << song
    @genres << song.genre
    song.artist = self
  end

end
