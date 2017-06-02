require "pry"
class Genre
    attr_accessor :name, :songs, :artists

    def initialize(name)
        @name=name
        @songs=[]
        @artists = []
    end

    def add_song(song)
        if !@songs.include?(song)
            @songs<<song
            song.genre = self
        end
    end

    def add_artist(artist)
        if !@artists.include?(artist)
            @artists<<artist
            artist.genres << self
        end
    end
end
