class Genre
  attr_accessor :artist, :song, :name

  @@all = []

  def initialize(artist, song, name)
    @artist = artist
    @song = song
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

end
