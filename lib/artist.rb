class Artist
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
    song = Song.new(name, self, genre)
    song
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    Song.all.map { |song| song.genre }
  end
end
