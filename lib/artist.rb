class Artist

  attr_reader :songs, :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    songs << song
    song.artist = self
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end
end
