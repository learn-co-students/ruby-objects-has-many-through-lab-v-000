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

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    result = []
    songs.each { |song| result << song.genre }
    result
  end

end
