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
    Song.all.select { |song| song.genre == self }
  end

  def artists
    results = []
    songs = self.songs
    songs.each do |song|
      results << song.artist
    end
    return results
  end
end
