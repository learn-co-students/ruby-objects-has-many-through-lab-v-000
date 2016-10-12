class Genre
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(title)
    @songs << title
  end
  
  def songs
    @songs
  end
  
  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
  
  
end