class Artist

  attr_accessor :name

  @@artists = []

  def initialize(name)
    @name = name
    @@artists << self
  end

  def self.all
    @@artists
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    songs.map { |song, genre| song.genre }
  end

end
