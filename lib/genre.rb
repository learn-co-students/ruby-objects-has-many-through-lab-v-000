class Genre 
  # class variable 
  @@all = []
  
  # attribute accessors
  attr_accessor :name
  
  # class methods
  def self.all 
    @@all 
  end
  
  # instance methods
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name,artist)
    new_song = Song.new(name,artist,self)
  end
  
  def songs 
    songs_of_genre = Song.all.select do |song|
      song.genre === self
    end
  end
  
  def artists
    artists = []
    self.songs.each do |song|
      if !artists.include?(song.artist)
        artists << song.artist
      end
    end
    artists
  end
end