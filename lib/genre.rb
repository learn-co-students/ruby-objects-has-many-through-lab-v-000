class Genre
  attr_accessor :name, :songs, :artists

  @@all = []

  def initialize(name)
    @name = name
    @songs = [] #has_many songs
    @artists = [] #has_many artists through songs
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end
end
