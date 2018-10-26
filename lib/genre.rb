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
    Songs.all.collect do |song|
    song.genre == genre
  end
end

  def artists

end
end
