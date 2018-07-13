class Genre
    attr_accessor :name, :song, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select {|i| i.genre = self}
    end

    def genres
        Song.all.map { |e|  e.genre}
    end

    def artists
        Song.all.map {|e| e.artist}
    end

    def self.all
        @@all
    end
end
