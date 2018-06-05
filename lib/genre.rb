class Genre
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.collect {|song| song.genre == self}
  end

  def artists
    Song.all.collect {|song| song.artist}
  end

end
