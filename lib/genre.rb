class Genre 
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.new_song(name, artist)
    song = Song.new(name)
    song.genre = self
    song
  end
  
  def self.name
    @name
  end  
  
  def songs
    Song.all { |sn| sn.genre == self }
  end
  
  def artists
    songs.map { |song| song.artist }
  end
  
  def add_song(song)
    self.songs << song
  end
  
end