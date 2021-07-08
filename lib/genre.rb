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
  Song.all.collect do |songs|
    songs
  end
end

def artists
  Artist.all.collect do |artists|
    artists
  end 
end

end
