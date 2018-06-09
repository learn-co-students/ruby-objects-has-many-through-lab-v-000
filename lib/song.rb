class Song
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def name
    @name
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def artist
    @artist
  end
  
  def genre
    @genre
  end
end