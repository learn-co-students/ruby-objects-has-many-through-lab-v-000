class Artist
  attr_accessor(:name)
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song, genre)
    song = Song.new(song, self, genre)
  end

  def songs
    Song.all.select{|s| s.artist == self}
  end

  def genres
    songs.collect{|s| s.genre if s.artist == self}
  end

end
