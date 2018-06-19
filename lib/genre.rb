class Genre
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(song, artist)
    create_song = Song.new(song, artist, self)
  end
  
  def songs
    Song.all.select do |song_name|
      song_name.genre == self
    end
  end
  
  def artists
    self.songs.collect do |song_name|
      song_name.artist
    end
  end
  
  def self.all
    @@all
  end
  
end