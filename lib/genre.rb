class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre.name == self.name}
  end

  def artists
    songs = Song.all.select {|song| song.genre.name == self.name}
    songs.map{|song| song.artist}
  end

end
