class Genre
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select{ |s| s.genre == self }
  end

  def artists
    self.songs.collect{ |s| s.artist }
  end
end
