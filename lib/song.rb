class Song
#==========================================
  # INSTANCE ATTRIBUTES
#==========================================
attr_accessor :name, :artist, :genre
#==========================================  
  # INSTANCE
#==========================================
  def initialize(name, genre_i)
    self.name = name
    self.genre = genre_i
    genre_i.add_song(self)
  end
#========================================== 
end