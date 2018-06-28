class Artist
  attr_accessor :name

  @@all = [ ]

  def self.all
    @@all
  end

  def initialize(name)
    self.name = name
    self.class.all << self
  end

  def new_song(song_name, genre)
    song = Song.new(song_name)
    song.genre = genre
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

end
