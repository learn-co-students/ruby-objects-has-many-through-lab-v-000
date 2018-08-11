class Artist
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
    Song.all.select {|song|song.artist == self}
  end

  def genres
    Song.all.collect {|song| song.genre}
  end

  def new_song(name,genre)
    Song.new(name,self,genre)
  end
end
