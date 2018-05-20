class Genre

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
  end

  def new_song(name, artist)
    Genre.new(name, self, artist)
  end

  def songs
    Song.all.select {|song|song.genre == self}
  end

  def artists
    songs.map {|song|song.artist}
  end
end
