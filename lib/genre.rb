class Genre

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, self, artist)
  end

  def songs
    Song.all.select {|songs| songs.genre == self}
  end

  def artists
    songs.map {|song| song.artist}
  end
end
