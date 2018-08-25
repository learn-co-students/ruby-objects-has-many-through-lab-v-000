class Song
  attr_accessor :artist
  attr_reader :genre
  @@all = []

  #initializes a song with a given name, artist and genre and adds it to
  #the class variable @@all for storage
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  #allows user to see which songs have been created
  def self.all
    @@all
  end
end
