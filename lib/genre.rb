class Genre
  @@all =[]
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.each {|s| s.genre == self}
  end

  def artists
    self.songs.collect {|s| s.artist }
  end

end
