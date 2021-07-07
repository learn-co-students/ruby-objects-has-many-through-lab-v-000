require 'pry'
class Artist

  attr_accessor :name
  @@all=[]

  def self.all
    @@all
  end

  def initialize(name)
    self.name=name
    self.class.all<<self
  end

  def new_song(name, genre)
    s = Song.new(name, self, genre)
  #s  binding.pry
  end

  def songs
    Song.all.select do |s| s.artist == self end
  end

  def genres
    self.songs.collect {|s| s.genre}
  end
end
