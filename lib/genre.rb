class Genre

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|i| i.genre == self}
  end

  def artists
    self.songs.collect {|i| i.artist}
    #binding.pry
  end

end
