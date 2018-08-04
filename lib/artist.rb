class Artist 
  attr_accessor :name, :genre
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, genre)
    name = Song.new(name, genre)
    name.artist = self
  end
  
  def songs(song)
    song.select { |s| s.artist == self }
  end
  
end
