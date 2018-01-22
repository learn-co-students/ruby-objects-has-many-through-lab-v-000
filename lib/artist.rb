class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    song.genre.artists << self
    songs << song
  end

  def genres
    @songs.collect {|x| x.genre}
  end

end
