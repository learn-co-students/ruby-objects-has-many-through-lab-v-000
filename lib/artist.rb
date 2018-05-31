
class Artist 
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def self.all
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @songs = [] 
    @@all << self 
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song  unless @songs.include?(song)
    song
  end

   def genres 
    @genres = @songs.collect{|song| song.genre}
   end
   
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
end  
           