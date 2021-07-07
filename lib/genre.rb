class Genre
attr_accessor :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def songs
  Song.all
end

def artists
  Song.all.map{|song| song.artist}
end

end
