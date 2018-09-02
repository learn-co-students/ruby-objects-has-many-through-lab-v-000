class Artist 
  attr_accessor :name, :genres, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genres = []
  end
  
  def self.all 
    @@all 
  end
  
  def new_song(name, genre)
   song = Song.new(name)
   self.songs << song
   genre = Genre.new(genre)
   self.genres << genre
  end
  
  def songs 
    @songs
  end
end