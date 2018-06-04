class Artist
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    name = Song.new(name, self, genre)
  end

  def songs
    Song.all.select{ |s| s.artist == self }
  end

  def genres
    self.songs.collect{ |s| s.genre }
  end
end
