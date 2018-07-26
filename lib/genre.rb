class Genre
  
  attr_accessor :name
  
  @@all = []
 
 def self.all
    @@all
 end  
  
 def initialize(name)
    @name = name
    @@all << self
 end

 def new_song(name, artist)
    Song.new(name, self, artist)
 end
 
 def songs
    Song.all{|song| song.genre == self}
 end

 def artists
    songs.map{|song| song.artist}
 end

end