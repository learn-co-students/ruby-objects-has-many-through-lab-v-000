class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
        @songs = []
        @genres = []
    end

    def name
        @name
    end

    def add_song(song)
        @songs << song
        song.artist = self
        @genres << song.genre
        song.genre.add_artist(self)
    end

    def songs
        @songs
    end

    def genres
        @genres
    end

end