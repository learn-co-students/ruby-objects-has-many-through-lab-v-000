class assert_instance_of
 
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
    Song.new(name, genre)
    song.artist = self #tell song it belongs to this artist
  end
  
  def songs 
    Song.all.select do |song|
      song.artist == self
  end
  
  def genres 
    self.songs.genre
  end
  
end  #class end