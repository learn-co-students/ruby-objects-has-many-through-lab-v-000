class Song
    attr_accessor :name, :genre, :artist 
    
   def initialize(name,genre)
       @name=name
       @genre=genre
       @artist
      genre.add_song(self) 
   end
    
end