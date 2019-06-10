class Genre
  attr_accessor :artist, :song, :name

  @@all = []

  def initialize(name)
    @artist = artist
    @song = song
    @name = name
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
