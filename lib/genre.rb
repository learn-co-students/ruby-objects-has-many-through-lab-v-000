
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

  def new_song(name, artist)
    Song.new(name, song, self)
  end

  def songs
    Song.all.select {|song| song.genre == self}  #select looks at each instance of a Song and finds where genre = self and returns an array

  end

  def artists
    self.songs.collect {|song| song.artist} #referencing songs method to create an array for only songs of this genre, then crreating an array of just the artists
  end

end
