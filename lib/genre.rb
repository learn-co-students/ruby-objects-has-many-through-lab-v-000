class Genre
  @@all = []

  attr_accessor :name, :artist, :songs

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def new_song(name, artist)
    Song.new(name,artist, self)
  end

  def songs
    Song.all.select do
      |song| song.genre == self
    end
  end

  def artists
    self.songs.collect do
      |song| song.artist
    end
  end

end
