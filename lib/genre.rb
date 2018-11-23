class Genre

  attr_accessor :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |sng|
      sng.genre == self
    end
  end

  def artists
    songs.map do |sng|
      sng.artist
    end
  end
  
end
