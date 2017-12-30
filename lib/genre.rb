class Genre
#==========================================
  # INSTANCE ATTRIBUTES
#==========================================
attr_accessor :name, :songs, :artists
#==========================================  
  # INSTANCE
#==========================================
  def initialize(name)
    self.name = name
    self.songs = []
    self.artists = []
  end
  
  def add_song(song_i) 
    self.songs << song_i
  end
  
  def add_artist(artist_i) 
    self.artists << artist_i
  end
  
  
#========================================== 
end