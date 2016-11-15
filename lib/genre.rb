require 'pry'

class Genre
  attr_accessor :name, :songs

   def initialize(name)
     @name = name
     @songs = []
   end

   def add_song(song)
     @songs << song
     song.genre = self unless song.genre == self
   end


end
