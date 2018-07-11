class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    @@all.collect do |g| g.artist end
  end

  def new_song(name,artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |s| s.genre == self end
  end

  def artists
    self.songs.collect do |s| s.artist end
  end
end
