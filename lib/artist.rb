class Artist
    attr_accessor :name, :song, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|i| i.artist == self}
    end

    def genres
        Song.all.map {|i| i.genre}
    end

    def self.all
        @@all
    end
end
