class Artist
  attr_accessor :name

  def initialize(name)
    @songs = []
    @name = name
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end
