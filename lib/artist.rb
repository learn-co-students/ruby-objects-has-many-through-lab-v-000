class Artist
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(title, genre)
    song_create = Song.new(title, self, genre)
  end
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    self.songs.collect do |song_names|
      song_names.genre
    end
  end
  
  def self.all
    @@all.each do |artist|
      puts artist.name
    end
  end
  
end