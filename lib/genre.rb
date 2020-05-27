class Genre

  attr_accessor :name

  @@genres = []

  def initialize(name)
    @name = name
    @@genres << self
  end

  def self.all
    @@genres
  end

  def songs
    Song.all.select { |song| song.genre == self}
  end

  def artists
    songs.map { |song, artist| song.artist }
  end

end
