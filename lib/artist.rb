class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self}
  end

  def genres
    results = []
    songs = self.songs
    songs.each do |song|
      results << song.genre
    end
    return results
  end
end
