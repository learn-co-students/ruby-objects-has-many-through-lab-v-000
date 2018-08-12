class Genre
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def songs
    son = Song.all
    son.select {|song| song.genre == self}
  end

  def artists
    self.songs.collect {|song| song.artist}
  end

end
