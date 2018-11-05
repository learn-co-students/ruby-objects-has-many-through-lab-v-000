class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}   #or self.genre? (may be same thing)
  end

  def artists
    self.songs.map {|song| song.artist}   #i think it should be using the songs method on self (current/selected genre)
  end

end
