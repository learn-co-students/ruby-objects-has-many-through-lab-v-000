class Song
    attr_accessor :name, :genre
    attr_reader :artist

    def initialize(name, genre)
        @name = name
        genre.add_song(self)
    end

    def artist=(artist)
        @artist=artist
        artist.add_song(self)
        @genre.add_artist(@artist)
    end

end
