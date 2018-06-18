class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    # iterate through all songs and find the songs that belong to that genre
    Song.all.select { |s| s.genre == self }
  end

  def artists
    # has many artists, through songs
    songs.map(&:artist)
  end
end
