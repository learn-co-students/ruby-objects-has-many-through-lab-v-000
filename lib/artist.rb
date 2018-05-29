
class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    self.name = name
    self.class.all << self
  end
  
  def self.all 
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song.artist = self
    song
  end
  
  def songs 
    Song.all.select { |music| music.artist == self }
  end
  
  def genres
    songs.collect { |music| music.genre }.uniq
  end
end