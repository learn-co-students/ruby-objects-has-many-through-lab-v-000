class Artist 
  # class variable 
  @@all = []
  
  # attribute accessors
  attr_accessor :name
  
  # instance methods
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end 
  
  def songs
    Song.all.select do |song|
      song.artist === self
    end
  end 
  
  def genres
    genres = []
    self.songs.each do |song|
      if !genres.include?(song.genre)
        genres << song.genre
      end
    end
    genres
  end
  
  # class method
  def self.all
    @@all
  end
end