class Genre
  attr_accessor :name, :songs
  
  @@all = []
  
  def self.all()
    @@all
  end
  
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
  end
  
  def new_song(name, artist)
    song = Song.new(name, artist, self)
    @songs << song
  end
  
  def songs()
    Song.all.each do |song|
      if song.genre == self
        @songs << song
      end
    end
    @songs
  end
    
  def artists()
    Song.all.each do |song|
      if song.genre == self
        @artists << song.artist
      end
    end
    @artists
  end
  
end