class Genre
  attr_accessor :name
  attr_reader :songs, :artist, :genres
  
@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def new_song(name, artist)
  song = Song.new(name, artist, self)
  artist.songs << song
end

def self.all
  @@all
end 

def songs
  Song.all.select do |song|
    song.genre == self
  end 
end 

def artists
  songs.map do |song|
    song.artist
end 
end 

end 
