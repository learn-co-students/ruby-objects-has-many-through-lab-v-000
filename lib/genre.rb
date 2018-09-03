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

  def artists
    self.songs.collect {|song| song.artist}
  end

  def new_song(name, artist)
    song = Song.new(name, artist, self)
    @songs << song
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end
end
