class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def save
    @@all << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect { |song| song.genre }
  end

end
