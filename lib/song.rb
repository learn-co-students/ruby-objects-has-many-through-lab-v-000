class Song
   attr_accessor :name, :artist, :genre
   
   @@all = []

   def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all 
    end

    def save(name, artist, genre)
        @@all << name
        @@all << artist
        @@all << genre
    end

end