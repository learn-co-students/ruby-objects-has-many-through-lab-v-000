require 'pry'

class Genre
  attr_accessor :name, :songs, :genre

   def initialize(name)
     @name = name
     @songs = []
   end

   def add_song(song)
     @songs << song
     song.genre = self unless song.genre == self
   end

   def artists
    self.songs.collect{|k| k.artist}
   end

end
