class Genre
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    songs.map {|genre| genre.artist}
  end

  def self.all
    @@all
  end

end
