require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    @@all = []
    
    #song belongs to an artist and a genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    # knows about all song instances
    def self.all 
        @@all
    end
end