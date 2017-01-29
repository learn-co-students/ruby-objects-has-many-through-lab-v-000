class Artist

  attr_reader :name
  @@Artists = []
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self unless song.artist = self
    @songs << song
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

end
