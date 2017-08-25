class Artist
  attr_reader :name
  attr_accessor :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
