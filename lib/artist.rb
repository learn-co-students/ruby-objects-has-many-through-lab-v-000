class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    song.genre.artists << self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect {|song| song.genre}.uniq
  end

end