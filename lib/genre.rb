class Genre

attr_accessor :name, :artist

@@all = []

 def initialize(name)
   @name = name
 end

 def self.all
   @@all
 end

 def save
 @@all << self
 end

 def songs
   Song.all.collect do |song|
     if song.genre == self
       song
     end
  end
   #   def artists                     #=> This is how the other two
   # self.songs.collect do |song|  #=> classes talk to each other
   #   song.artist
   # end
 end

 def artists
   self.songs.collect do |song|
     song.artist if song
   end
  end


end
