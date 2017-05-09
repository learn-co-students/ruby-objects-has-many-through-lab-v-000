class Song
    attr_writer :artist

    def initialize(name, genre)
        @name = name
        @genre = genre
        genre.song = self
        genre.add_song(self)
    end

    def genre
        @genre
    end

    def artist
        @artist
    end

end