class Genre
  attr_accessor(:name)
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select{|s| s.genre == self}
  end

  def self.all
    @@all
  end

  def artists
    songs.collect{|s| s.artist if s.genre == self}
  end
end
