class Artist

attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs
  Songs.all.select do |songs|
    songs.artist == self
  end
end

end
