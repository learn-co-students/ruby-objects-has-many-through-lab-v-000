class Artist
  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    Artist.all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select {|song|
      song.artist == self
    }
  end

  def genres
    self.songs.collect {|song|
      song.genre
    }
  end

end
