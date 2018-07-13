class Song
    attr_accessor :name, :artist, :genre

    @@song = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@song << self
    end

    def self.all
        @@song
    end
end
