class Genre
  @@all = []
  attr_accessor :name, :songs

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def new_song(name, artist)
    self.songs << Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

end
