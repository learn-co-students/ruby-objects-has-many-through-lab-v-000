require 'pry'
class Artist
  attr_accessor :songs, :genres
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  
  def self.all
    @@all
  end
  
  def new_song(name, self, genre)
   binding.pry
    song=Song.new(name, genre)
  end
  
  def songs
   # Song.all.select do { |s| s.artist=self }
    end
  
  
  def genres
  #  songs.collect do { |s| s.genre }
    end
  
    
end