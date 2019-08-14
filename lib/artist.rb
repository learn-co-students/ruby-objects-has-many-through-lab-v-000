class Artist

  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end

end
