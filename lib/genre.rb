class Genre

  attr_accessor :name, :artist, :songs

  def initialize(name)
    @name = name
    @artist = artist
    @songs = songs
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    songs.map {|song| song.artist}
  end


end
