class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, self, artist)
  end

  def songs
    Song.all {|song| song.genre == self }
  end

  def artists
    Song.all.collect {|song| song.artist }
  end

end
