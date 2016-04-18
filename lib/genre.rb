class Genre
    attr_reader :name, :songs, :artists

    def initialize(name)
        @name = name
        @songs = []
        @artists = []
    end

    def add_song(song)
        @songs << song
    end

    def artists
        @songs.each do |song|
            @artists<<song.artist
        end
        @artists
    end
end
