class Genre
  attr_accessor :name, :song, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|i| i.genre = self}
  end

  def genres
    Song.all.map { |i| i.genre}
  end

  def artists
    Song.all.map {|i| i.artist}
  end

  def self.all
    @@all
  end
end