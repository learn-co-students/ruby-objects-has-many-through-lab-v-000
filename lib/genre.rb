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
 end 

 #genre has many artists through songs

 class Genre 
 #has many songs
   attr_accessor :name

   @@all = []

   def initialize(name)
     @name = name 

     @@all << self 
   end

   def self.all 
     @@all 
   end 

   def new_song(name, artist)
     Song.new(name, artist, self)
   end

   def songs 
     Song.all.select do |song| 
       song.genre == self 
     end 
   end 

   def artists 
    songs.map do |song|
       song.artist 
     end 
   end 
 end 
 