class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    songs = Song.all.select { |song|
      song.artist == self
    }
    songs
  end

  def genres
    genres = []
    self.songs.each do |song|
      genres << song.genre
    end
    genres
  end

  def self.all
    @@all
  end
end
