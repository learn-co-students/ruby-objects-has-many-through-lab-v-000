class Artist 
  
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def new_song(name, genre) 
    Song.new(name, self, genre)
  end
  
  def songs 
   Song.all.select do |songs|
    songs.artist == self 
  end 
  end
  
  def genres 
    Song.all.collect do |songs|
      songs.genre 
    end 
  end
end