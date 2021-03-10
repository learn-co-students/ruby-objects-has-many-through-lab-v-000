class Genre 
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select{|song| song.genre == self}
  end
  
  def artists
    genre_artists = []
    Song.all.each do |song| 
      if song.genre == self
        genre_artists << song.artist
      end
    end
    genre_artists
  end
  
end