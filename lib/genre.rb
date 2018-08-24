class Genre
  attr_accessor :name
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(name)

    @name = name
    @@all << self
  end 
  
  def new_song(name, artist)
    Song.new(name, artist, self) #self refers to genre because we are in the genre class, and the order of name-self-genre needs 
    #to be in the same order as the initialize method in song.rb because the test specifies the order
  end
  
  def songs
    Song.all.select do |s|
      s.genre == self #we're trying to match a genre to a genre, and we're in the Genre class
    end 
  end
  
  def artists
    songs.collect do |genre| #songs - from the songs method above
    genre.artist #returning the artist associated with that Genre
    end
  end 

end 