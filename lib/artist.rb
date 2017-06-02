class Artist
    attr_accessor :name, :songs, :genres

    def initialize(name)
        @name=name
        @songs = []
        @genres = []
    end

    def add_song(song)
        if !songs.include?(song)
            @songs << song
            song.artist = self
        end
    end

    def songs
        @songs
    end

end
