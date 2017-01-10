class Artist

  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def genres
    @songs.map do |song|
      song.genre
    end
  end

end
