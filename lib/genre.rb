class Genre
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
    song.genre = self
    self.songs << song
  end

  def artists
    self.songs.collect { |song| song.artist }
  end

end
