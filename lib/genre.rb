class Genre
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self} #has manty songs
  end

  def artists
    Song.all.collect {|song| song.artist} # has many artists, through songs
  end

end
