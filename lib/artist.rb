class Artist
  attr_accessor :song, :genre, :name, :artist
  @songs = []
  
  def initialize(name)
    @name = name
    @songs = []
    @genre = genre
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def songs
    @songs
  end
  
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
  
end