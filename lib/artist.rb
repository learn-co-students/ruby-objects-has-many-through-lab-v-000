require 'pry'
class Artist

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
  @genre = []
end



def self.all
#  binding.pry
@@all
end

def new_song(name, genre)
  song = Song.new(name, self, genre)
end

def songs
  Song.all.select { |song| song.artist == self}
end

def genres
self.songs.select { |song| song.genre }

end

end
