
class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def songs
    Song.all.select do |i|
      i.genre == self
    end
  end

  def artists
    Song.all.select {|i| i.genre == self}.collect {|j| j.artist}
  end 
end
