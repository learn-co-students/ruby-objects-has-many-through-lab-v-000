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

  def songs
    Song.all.select do |songs|
    songs.genre
  end
end

  def artists
    Song.all.collect do |songs|
      songs.artist
    end
  end

end
