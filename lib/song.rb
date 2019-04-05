class Song

@@all = []
attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
    @name = name
    @artist= artist
    @genre = genre
    @@all << self
end

def self.new(name, artist, genre)
  Song.new(self, name, artist, genre)
end
