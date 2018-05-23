class Genre
  attr_accessor :name, :songs, :artists
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all {|song| song.genre == self}
  end

  def artists
    songs.collect {|song| song.artist}
  end

end
