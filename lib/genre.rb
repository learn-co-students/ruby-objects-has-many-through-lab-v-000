require "pry"
class Genre
  
  attr_accessor :name
  
  @@all = []
  
   def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, artist)
    # binding.pry
    Song.new(name, self, artist)
  end
  
  def songs
    Song.all.select {|song| song.artist }
  end
  
  def artists
    songs.map {|song| song.artist}
  end

end