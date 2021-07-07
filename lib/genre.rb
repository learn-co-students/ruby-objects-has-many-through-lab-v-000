class Genre
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  def self.all
    @@all
  end
  def add_song(song)
    @songs << song
    song
  end
  def artists
    self.songs.map do |song|
      song.artist
    end
  end
  
end