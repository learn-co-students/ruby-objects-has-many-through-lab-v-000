class Genre
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name, artist)
    Song.new(song_name, artist, self)
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    songs.map {|song| song.artist}
  end
  
end