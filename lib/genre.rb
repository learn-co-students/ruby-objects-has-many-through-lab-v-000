class Genre
  @@all = []
  attr_accessor :name

  def initialize(name)
    @@all << self 
    @name = name
    @songs = []
  end

  def self.all
   @@all
  end 
 
  def new_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    @songs.collect { |song| song.artist }
  end
end