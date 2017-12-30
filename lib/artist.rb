class Artist
#==========================================
  # INSTANCE ATTRIBUTES
#==========================================
attr_accessor :name, :songs
#==========================================  
  # INSTANCE
#==========================================
  def initialize(name)
    self.name = name
    self.songs = []
  end
  
  def add_song(song_i)
    song_i.artist = self
    self.songs << song_i
    song_i.genre.add_artist(self)
  end
  
  def genres
    self.songs.map{|song| song.genre}
  end
#========================================== 
end