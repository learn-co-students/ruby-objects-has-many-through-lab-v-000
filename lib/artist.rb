require 'pry'

class Artist 
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @@all << self
    @name = name
  end
  
  def new_song(name, genre)
    Song.new(name, genre, self)
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end
  
  def genres 
    Song.collect(&:genre)
  end
end