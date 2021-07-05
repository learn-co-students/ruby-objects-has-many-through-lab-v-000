class Genre 
  
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  
  def new_song(name, artist)
    song = Song.new(name, self, artist)
  end 
  
  def songs 
    Song.all.select do |song|
      song.genre == self 
  end 
end 
  
  def add_song(song)
   self.songs << song
   end
  
  def artists 
    self.songs.collect { |song| song.artist }
  end 
  
  
end 
