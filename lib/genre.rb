class Genre 
  
  attr_accessor :name, :song, :artist  
  
   @@all = []
 
  def initialize(name)
    @name = name 
    @@all << self 
  end 

  def self.all
    @@all
  end

  def new_song(new,artist)
  song = Genre.new(name.self.song)
  end  
    
  def songs 
  Song.all.select {|song| song.genre == self}
  end  
  
  def artists 
  self.songs.collect { |song| song.artist }
  end
 

end 