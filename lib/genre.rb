class Genre
  attr_accessor :name, :songs

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    self.name = name
    self.class.all << self
  end

  def new_song(name, artist)
    song = Song.new(name)
    song.artist = artist
    song.genre = self
    self.songs << song
    return song
  end

  def songs
    Song.all.select {|song| song.genre = self}
  end

  def artists
    self.songs.collect {|song| song.artist}
  end
end
