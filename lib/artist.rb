class Artist
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    self.name = new_song.artist
    new_song
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    genres = []
    songs.each {|song| genres << song.genre}
    genres
  end

end
