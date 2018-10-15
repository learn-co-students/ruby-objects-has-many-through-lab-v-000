class Genre
  @@all = []
  
  attr_accessor :name, :artist, :genre, :song
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |song|
      #binding.pry
      #for each song, does the genre of that song == self?
      song.genre == self
    end
  end
    
  def artists
    Artist.all.select do |artist|
      #binding.pry
      artist.genre == self
      self 
      end
  end
end
  