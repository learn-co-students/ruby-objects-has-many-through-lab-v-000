class Artist
  @@all = []

  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do
      |song| song.artist == self
    end
  end

  def genres
    genres = self.songs.collect do
      |song| song.genre
    end
    genres
  end

end
