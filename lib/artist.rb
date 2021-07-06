class Artist
  attr_accessor :name

  @@all = []

 def initialize(name)
  @name = name
  @songs = []
  @@all << self
 end

 def self.all
   @@all
 end

 def  new_song(song, genre)
  Song.new(name, self, genre)
 end

def genres
  self.songs.collect do |song|
    song.genre
  end
end

def songs
  Song.all.select do |song|
    song.artist == self
  end
end
end
