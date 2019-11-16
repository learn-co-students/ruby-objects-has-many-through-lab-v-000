class Genre

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all
  end

  def artists
    Song.all.map do |song|
      song.artist
    end
  end


end
