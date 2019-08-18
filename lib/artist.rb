class Artist
attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end
  
  def add_song(song)
    self.songs << song
    song.artist = self
  end
  
  def genres
    self.songs.map{|song| song.genre}
  end
 
end