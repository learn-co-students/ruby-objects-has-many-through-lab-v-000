class Artist
  attr_accessor :genre, :name 

def initialize(name)
  @name = name
  @genres = []
  @songs = []
end

def add_song(song)
  song.artist = self 
  @songs << song 
end

def songs
  @songs
end

def genres
  @songs.collect do |song|
    song.genre 
  end 
end

end