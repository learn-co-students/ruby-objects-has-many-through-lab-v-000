class Genre
    attr_accessor :genre, :name
    @@all = []
    def initialize(name)
      @name= name
      @@all << self
    end
    def self.all
      @@all
    end
    def songs
      Song.all.select { |e| e.genre =  self} #select requires a condition
    end
    def artists
      Song.all.collect { |e| e.artist}  #map or collet return just values
    end
end
