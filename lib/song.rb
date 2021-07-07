class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name,artist, genre)
      @name = name
      @genre = genre
      @artist = artist
      genre.add_song(self)
      @@all<< self
  end
  
  def self.all       
   @@all
  end
  
end