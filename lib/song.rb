class Song
    attr_accessor :genre, :name, :artist
    
    def initialize(title, genre)
        @title = title
        @genre = genre
        genre.add_song(self)
    end 
    
    
end 