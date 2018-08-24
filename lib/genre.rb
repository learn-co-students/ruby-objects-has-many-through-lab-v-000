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
    Song.all.each do |song|
      song.genre == self
    end
  end

  def artists
    songs.collect do |song|
      song.artist
    end
  end

  def self.all
    @@all
  end

end
