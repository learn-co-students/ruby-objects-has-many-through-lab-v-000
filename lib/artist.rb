require 'pry' 
class Artist 
  @@all = []
  attr_reader :name 
  attr_accessor :songs, :genres
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @genres = []
  end
  
  def self.all 
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    self.songs << song
    self.genres << genre
    song
  end

end
