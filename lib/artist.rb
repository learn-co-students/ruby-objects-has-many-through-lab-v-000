class Artist
  attr_accessor :name
  attr_reader :songs, :genres

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
