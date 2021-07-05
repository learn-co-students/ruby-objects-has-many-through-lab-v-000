class Genre

  attr_accessor :name, :songs

  @@all = []

  #
  def songs
    Song.all.collect do |genre|
      genre
    end
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

end
