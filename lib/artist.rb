class Artist
  attr_reader :name
  attr_accessor :songs

  def initialize(name)
    @name = name
    self.songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end