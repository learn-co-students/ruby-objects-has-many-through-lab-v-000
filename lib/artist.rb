class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs  []
  end
  
  def self.all
    @@all
  end
   
  # The `Artist` class needs an instance method, `#new_song`, that takes in an
  # argument of a name and genre creates a new song. That song should know that it
  # belongs to the artist.
  
  def new_song(name, self, genre)
    Song.new(name, self, genre)
    @songs << self
  end
  
  def songs
    Song.all.select { |song| song.artist == self }
  end
  
  def genres
    self.songs.collect { |n| n.genre }
  end
end
