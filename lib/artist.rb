require_relative "./song.rb"
require_relative "./genre.rb"

class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end 
  
  def songs 
    Song.all.select {|s| s.artist == self} 
  end 
  
  def genres 
    songs.map(&:genre).uniq 
  end
  
  def self.all
    @@all 
  end
end
    
    