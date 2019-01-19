class Genre
@@all = []

attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def self.all
  @@all
end

def songs
  @songs
end

def artists
self.songs.map do |song|
  song.artist
end
end
end
