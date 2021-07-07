require 'pry'

class Artist
    
    attr_accessor :name, :songs, :genres
    
    def initialize(name)
        @name = name
        @songs = %w[]    
    end
    
    def add_song(song)
        self.songs << song
        song.artist = self
        song.genre.artists << self
    end
    
    def genres
        self.songs.collect {|x| x.genre}
    end
        
    
end