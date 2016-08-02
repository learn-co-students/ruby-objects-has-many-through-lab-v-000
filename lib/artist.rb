class Artist

  attr_reader :name, :songs
  #sattr_accessor :songs, :genres

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    songs << song
    song.artist = self
    song.genre.artists << self
  end

  def genres
    songs.collect {|song| song.genre}
  end

end
