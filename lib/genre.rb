class Genre
attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  self.songs << song
end

def songs
  @songs
end

def artists
  self.songs.collect {|x| x.artist}
end

end
