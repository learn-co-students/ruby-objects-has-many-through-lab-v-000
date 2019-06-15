class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def artists
    Song.all.map {|song| song.artist}
  end

  def songs
    Song.all.select {|song| song.genre = self}
  end
end
