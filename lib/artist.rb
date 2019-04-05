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

def new_song
  new_song = Song.new(name, self, genre)
  new_song
end








end
