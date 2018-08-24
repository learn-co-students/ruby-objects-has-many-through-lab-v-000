require 'pry'

class Artist
    attr_accessor :name
    @@all= []

    def initialize(name)
        @name = name
        @@all << self
    end

    # knows about all Artist instances
    def self.all 
        @@all
    end

    # given a name and genre, creates a new song associated with that artist
    def new_song(name, genre)
        Song.new(name, self, genre)
    end
      
    # iterates through all songs and finds the songs that belong to that artist. 
    def songs
        Song.all.select do |song|
            song.artist == self
        end   
    end
    
    # artist has many genres, through songs
    # iterates over that artist's songs and collects the genre of each of those songs
    def genres
        songs.collect do |song|
            song.genre
        end
    end  
end
