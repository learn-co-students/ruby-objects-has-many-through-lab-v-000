class Artist 
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song.artist = self
    song
  end
  
  def songs
    Song.all.select { |s| s.artist == self }
  end
  
  def genres
    songs.map { |song| song.genre  }
  end
end
