require 'pry'
class Artist

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
  @genres = []
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
 songs.each do |song|
   @genres << song.genre
 end
 @genres
end

end
