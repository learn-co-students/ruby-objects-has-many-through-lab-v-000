class Song

  attr_accessor :name, :artist, :genre

  @@all = []
  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = Artist.create(artist)
    @genre = Genre.create(genre)
    @@all << self
    self.artist.songs << self
  end

end
