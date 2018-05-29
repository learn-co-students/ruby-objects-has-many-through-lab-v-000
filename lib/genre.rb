
class Genre
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, artist)
    song = Song.new(name, artist, self)
    song.artist = self
  end
  
  def songs 
    Song.all.select { |music| music.genre == self }
  end
  
  def artists
    songs.collect { |music| music.artist }.uniq
  end
end