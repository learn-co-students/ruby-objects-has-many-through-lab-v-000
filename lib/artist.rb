require 'pry'
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

def new_song (name, genre)
  Song.new(name, self, genre)
end

def songs
  Song.all.select { |song| song.artist == self }
end

def genres
  self.songs.collect do |song|
    song.genre
  end
end

# Using the map method
# def genres
#    songs.map(&:genre)
#  end
# end

end
