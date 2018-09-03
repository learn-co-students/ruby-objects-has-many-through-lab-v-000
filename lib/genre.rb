class Genre
  @@all = [ ]
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end
  def new_song(name, artist)
    Song.new(name, artist, self)
  end
  def artists
    song = Song.all.select {|s| s.genre == self}
    song.uniq.map {|s| s.artist}
  end
  def songs
    Song.all.select {|s| s.genre == self}
  end

# Class methods
  def self.all
    @@all
  end
end
