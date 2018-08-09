class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select {|song|
      song.genre == self
    }
  end

  def artists
    self.songs.collect {|song|
      song.artist
    }
  end

end
