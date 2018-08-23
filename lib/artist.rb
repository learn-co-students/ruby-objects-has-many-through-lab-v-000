
class Artist
  attr_accessor :name, :songs
  @@all =[]
  
  def self.all
  @@all
  end
  
  def new_song(name,genre)
    Song.new(name,self,genre)
  end
  
  def initialize(name)
      @name = name
      @songs = []
      @@all<< self
  end
  
  def add_song(song)
      @songs << song
      song.artist = self
  end
  
  def songs
    Song.all.select{|song|song.artist == self}
  end


   def genres
    self.songs.collect do |song| 
      song.genre
    end
  end

end