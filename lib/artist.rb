class Artist 
  
  attr_accessor :name, :genre, :songs
  
  @@all = [] 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song.artist = self 
  end
  
  def songs 
    Song.all.select{|song| song.artist = self}
  end
  
  def genres 
    artist.songs.collect {|song| artist.genre}
  end
  

  
end