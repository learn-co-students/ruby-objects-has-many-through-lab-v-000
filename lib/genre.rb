class Genre
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def artists
    self.songs.collect{|song| songs.artist}
  end
end
