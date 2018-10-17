class Genre
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
 
  def add_song(song)
    if !self.songs.include?(song) 
      song.genre = self
      @songs << song
    end
  end
  
  def songs
    @songs
  end
  
  def artists
    self.songs.collect! {|song| song.artist}
  end
end