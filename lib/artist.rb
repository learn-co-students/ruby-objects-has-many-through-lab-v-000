class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end
  @songs = []

  def songs
    @songs
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

  def add_song(song)
    song.artist = self
    @songs.push(song)
  end
end
