class Artist
  @@all = []

  attr_accessor :name

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_song(song_name,genre)
  song = Song.new(song_name,self,genre)
end

def songs
  Song.all.select do |x|
    x.artist == self
  end
end

def genres
  songs.map do |x|
    x.genre
  end
end











end
