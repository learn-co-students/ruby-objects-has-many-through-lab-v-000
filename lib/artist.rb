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
  
  def genres 
    genre_list = [ ]
    self.songs.each {|item| genre_list << item.genre}
    genre_list
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
end