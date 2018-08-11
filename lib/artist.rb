class Artist
  attr_accessor :name
  attr_reader :songs, :genres
  
@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end 

def self.all
  @@all
end

def new_song(name, genre)
  song = Song.new(name, self, genre)
  @songs << song 
  song 
end 

def songs
  Song.all.select do |song|
    song.artist == self
  end 
end 

def genres
  songs.map do |songs|
    songs.genre
end 
end 
end 

  
  