class Genre
   attr_accessor :name
   
    def initialize(name)
        @name = name
        @songs = []
    end
    
    def songs
       @songs 
    end
    
    def artists
        self.songs.collect { |song| song.artist }
    end
    
    def add_song(song)
        self.songs << song
    end
    
end