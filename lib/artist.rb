class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_song(name_song, genre)
    Song.new(name_song, self, genre)
  end
  def songs
    Song.all.select{|song| song.artist == self}
  end
  def genres
    self.songs.collect{|song| song.genre}
  end
end
