require 'pry'
 class Genre
   attr_accessor :name

     def initialize(name)
     @name = name
     @songs = []
     end

     def songs
       @songs
     end

     def add_song(song) #has many songs
       @songs << song

     end

     def artists
         @songs.collect do |song|
        song.artist # one song has one artist
     end
    end
  end
