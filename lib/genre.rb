class Genre

  attr_accessor :songs

  def initialize(name)
    @name=name
  end

  def name
    @name
  end

  def songs
    Song.all.select do |song|
      song.genre== self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

end
