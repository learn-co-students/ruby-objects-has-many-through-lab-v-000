class Genre
  attr_accessor :name
  @@all = []
  def self.all
    @@all
  end
  def initialize(name)
    @name = name
  end
  def songs
    Song.all.select{|song| song.genre == self}
  end
  def artists
    Song.all.collect{|song| song.artist }
  end
end
