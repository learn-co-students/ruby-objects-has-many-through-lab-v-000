class Artist
  attr_accessor :name#, :songs, :genres, :artist, :genre

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end

  def new_song(the_name, the_genre)
    Song.new(the_name, self, the_genre)
  end
end
