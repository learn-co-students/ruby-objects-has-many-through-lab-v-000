require 'pry'
class Artist
  attr_reader :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song.artist = self
    if !@songs.include?(self)
      @songs << song    
    end
    song
  end
  
  def genres
    genres = @songs.map {|song| song.genre}
    genres.uniq
  end
end