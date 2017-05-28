class Artist
    attr_reader :name
    attr_accessor :songs
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        self.songs << song
        song.artist = self
    end

    def genres
        self.songs.collect{|song| song.genre}
    end
end