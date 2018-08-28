class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    self.songs << Song.new(name, self, genre)
  end

  def songs
    Songs.all.select do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end
