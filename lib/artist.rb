class Artist
  
  @@all = []
  attr_accessor :name, :songs, :genres
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song, genre)
    new_song = Song.new(song, self, genre)
    @songs << new_song
    self.genres << genre
    new_song
  end
end