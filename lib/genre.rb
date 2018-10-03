class Genre

  @@all = []

attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def self.all
    @@all
  end

  def artists
    Song.all.collect do |song|
      song.artist
    end
  end
end
