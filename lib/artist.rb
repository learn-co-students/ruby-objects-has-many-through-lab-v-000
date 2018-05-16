class Artist

  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    @@all << self
    #song.artist = self
  end

  def songs
    @songs
  end
end
