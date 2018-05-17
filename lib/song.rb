class Song
  #this is the class where everything is done THROUGH
  @@all = []
  attr_accessor :name, :artist, :genre
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    genre.songs << self
    genre.artists << @artist #or self.artist
    #this was needed so that genre could fill its arrays
    @genre = genre
    @@all << self

  end

  def self.all
    @@all
  end
end
