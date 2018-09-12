class Artist 
  @@all = []
  attr_accessor :name 

   def initialize(name)
    @@all << self
    @name = name 
    @songs = [] 
   end 
  
   def self.all
    @@all
    end 

    def new_song(name, genre)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect { |song| song.genre }
  end
end