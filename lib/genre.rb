class Genre

    attr_writer :artist, :song

    def initialize(name)
        @name = name
        @songs = []
        @artists = []
    end

    def name
        @name
    end

    def add_song(song)
        @songs << song
    end

    def add_artist(artist)
        @artists << artist
    end

    def songs
        @songs
    end

    def artists
        @artists
    end

end