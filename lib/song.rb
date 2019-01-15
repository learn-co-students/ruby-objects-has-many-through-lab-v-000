class Song
  attr_accessor :name, :genre, :artist #belongs_to 
  @@all = []
  def initialize(name, genre)
    @name = name 
    @genre = genre  #telling the song about the genre
    self.genre = genre #telling the song about the genre
    @@all << self 
   # genre.songs <<  self #tell the genre about the song 
  end
  
  def self.all
    @@all 
  end
 
end