class Artist
  attr_accessor :name, :genres
  @@all = []

  def initialize(name)
    @name = name
    @genres = []
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    @genres << genre
    song
  end

  def songs
    @songs
  end

  def genres
    @genres
  end
end
