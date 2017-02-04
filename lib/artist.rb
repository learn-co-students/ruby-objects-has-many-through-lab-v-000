class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song if song.is_a?(Song)
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.map {|song| song.genre}
  end

end
