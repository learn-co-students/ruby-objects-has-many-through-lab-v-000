class Artist

    attr_accessor :name, :genre, :songs

    def initialize(name)
        @name = name
        @songs = []
    end
    
    def add_song(song)
        @songs << song
        song.artist = self
    end
 

    def genres
        self.songs.collect do |song|
            song.genre
        end
    end


end
