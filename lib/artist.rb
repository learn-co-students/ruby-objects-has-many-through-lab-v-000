class Artist
   attr_accessor :name, :songs, :genres

   def initialize(name)
      @name = name
      @songs = []
   end

   def add_song(song)
      songs.push(song)
      song.artist = self
   end

   def genres
      songs.collect(&:genre)
   end
end
