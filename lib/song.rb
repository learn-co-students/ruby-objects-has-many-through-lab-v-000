class Song
   attr_accessor :name, :genre, :artist

   def initialize(name, genre)
     @name = name
     @genre = genre
     #needs to add song to @songs in Genre class
     genre.songs << self
   end

 end
