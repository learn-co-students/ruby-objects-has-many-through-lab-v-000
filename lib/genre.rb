class Genre
  attr_accessor :name
  @@all = []
  def initialize(genre)
    @name = genre
    @@all << self
  end
  
  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def new_song(name, artist)
    song = Song.new(name, artist, self)
  end
  
  def artists
    Artist.all.select do |artist|
      artist.genres.include?(self)
    end
  end  
end