
class Genre
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
      @name = name
      @songs = []
      @@all << self
  end
  
  def new_song(name,artist)
    s= Song.new(name, artist, self)
    @songs << s 
    s 
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, artist)
    Song.new 
  end
  
  def add_song(s)
    @songs << s 
  end
  
  def songs
      @songs
  end
  
  def artists
      @songs.collect { |song| song.artist }
  end
end