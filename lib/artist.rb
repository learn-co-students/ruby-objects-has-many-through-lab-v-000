require 'pry'
class Artist

  attr_accessor :name, :genres 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @genres = []
  end

  def self.all 
    @@all 
  end 

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end 
  
  def songs
    Song.all.select do |song|
      song.artist == self 
    end
  end 
  
    def genres 
      Song.all.each do |song|
        if song.artist == self
          @genres << song.genre 
        end 
      end 
      @genres 
    end 
 



  
  
end 
