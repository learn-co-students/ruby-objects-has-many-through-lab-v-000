class Artist
  attr_reader :name
  attr_accessor :songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end
