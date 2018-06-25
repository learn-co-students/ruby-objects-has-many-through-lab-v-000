class Genre
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    artists = []
    songs.each do |song|
      artists <<  song.artist
    end
    artists
  end

  def self.all
    @@all
  end

end
