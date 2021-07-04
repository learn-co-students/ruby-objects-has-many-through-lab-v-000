class Genre
 attr_accessor :name, :songs, :artists

 def initialize(name)
   @name = name
   @songs = []
 end

 def artists
   self.songs.map {|song| song.artist if song.genre == self}
 end

end
