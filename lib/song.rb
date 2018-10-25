class Song 
    
    attr_accessor :name, :song, :artist 
    
    @@all = [] 
    
    def initialize(name, song, artist)
      @name = name
      @song = song
      @artist = artist
      @@all << self 
    end 
    
    def self.all
      @@all 
    end 
    
    def genre 
      
      
    end   
    
  end 