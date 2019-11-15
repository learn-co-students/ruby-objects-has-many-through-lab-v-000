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

  def new_song(name, artist)
    song = Song.new(name, artist, self)
    song
  end

  def songs
    Song.all.select { |song| song.genre == self }
  end

  def artists
    result = []
    songs.each { |song| result << song.artist }
    result 
  end
end
