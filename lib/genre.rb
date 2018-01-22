class Genre
   attr_accessor :name, :songs, :artists

   def initialize(name)
      @name = name
      @songs = []
   end

   def add_song(song)
      songs.push(song)
   end

   def artists
      songs.collect(&:artist)
   end
end
