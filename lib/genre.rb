class Genre
  attr_accessor :name, :songs
  
@@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self

  end

  def songs
    @songs
  end


  def artists
    array_of_songs = self.songs
    array_of_artists = array_of_songs.collect do |song|
      song.artist
    end
    array_of_artists
  end

  def self.all
    @@all
  end


end