class Artist
   attr_accessor :name, :artist, :genre
   @@all=[]
   def initialize(name)
    	@name = name
    	@@all << self
   end
   def self.all
    	@@all
   end
   def new_song(name, genre)
     song = Song.new(name, self, genre)
   end
  def songs
    	Song.all.select do |song|
      	song.artist == self
    	end
  end
  def genres
    	Song.all.collect do |song|
      	song.genre
    	end
  end

  def name
    @name
  end

end
