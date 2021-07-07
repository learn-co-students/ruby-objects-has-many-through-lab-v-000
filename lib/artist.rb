class Artist 
  
  attr_accessor :name, :songs, :genre   
  @@all = []
  
  def initialize(name) 
    @name = name 
    @@all << self 
    @songs = []
  end 
  
  def self.all
    @@all.each do |artist|
      puts "#{artist}"
    end 
  end 
  
  def new_song(name, genre)
    x = Song.new(name, self, genre)
    @songs << x 
    x
  end 
  
  def genres 
    @songs.collect do |song|
      song.genre
    end 
  end 
  
  
end 