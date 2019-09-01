class Artist 
  
  attr_accessor :name, :genre
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|item| item.artist == self}
  end
  
  #def genres 
    #Genre.all.select {|item| item.genre == self}
  #end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
end