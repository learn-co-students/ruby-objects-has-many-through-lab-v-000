class Artist
  attr_accessor :name, :song, :genre

  def initialize(name)
    @name = name
    @songs = Array.new
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