class Artist 
  
  attr_accessor :name, :artist , :genre
  
  @@all = []      #Artist class needs a class variable @@all that begins as an empty array
 
  def initialize(name)
    @name = name 
    @@all << self #An artist is initialized with a name and is saved in the @@all array.
   
  end 
  
   def self.all     #.all that lists each artist in the class variable
     @@all 
   end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs.last 
  end 
  
  
  def songs 
    Song.all.select do |song| #iterates through songs
      song.artist == self #finds songs that belong to artist
    end 
   end 
    
    
    def genres 
      Song.all.map do |song|
        song.genre 
    end 
   end 
 
end

