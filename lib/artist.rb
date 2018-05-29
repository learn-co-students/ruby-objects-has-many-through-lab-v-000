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
  
  def new_song(song_name, genre)
    this_song = Song.new(name, song_name, genre)
    @@all << this_song 
    this_song.name = self 
  end   
end   