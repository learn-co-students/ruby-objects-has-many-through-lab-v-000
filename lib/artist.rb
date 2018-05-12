class Artist

  attr_accessor :name, :genre, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(genre, song)
    Song.new(genre, song, self)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.select do |song|
      song.genre == self
    end
  end

end
