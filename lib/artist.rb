class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    @songs << new_song
    new_song
  end

  def genres
    @songs.map{|song| song.genre}
  end

  def songs
    @songs
  end
end
