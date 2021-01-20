require 'pry'

class Genre
    attr_accessor :name
    @@all= []

    def initialize(name)
        @name = name
        @@all << self
    end
    # knows about all song instances
    def self.all 
        @@all
    end

    #takes in an argument of a name and an artist and creates a new song.#That song should know that it belongs to the genre.
    def new_song(name,artist)
        Song.new(name, self, artist)
    end

    #iterates through all songs and finds the songs that belong to that genre.
    def songs
        Song.all.select do |song|
            song.genre == self
        end  
    end

    #iterates over the genre's collection of songs and collects the artist that owns each song.    
    def artists
        songs.collect do |song|
            song.artist
        end
    end
end