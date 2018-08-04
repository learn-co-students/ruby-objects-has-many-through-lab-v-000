class Genre 
  attr_accessor :song, :artist, :genre
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(genre)
    @genre = genre
    @@all << self
  end
  
  def self.new_song(name, artist)
    song = Song.new(name)
    song.genre = self
    song
  end
  
  def songs(song_name)
    song.select { |sn| sn.genre == self }
  end
  
  def artists(name)
    name.select { |artist| artist == name }
  end
end