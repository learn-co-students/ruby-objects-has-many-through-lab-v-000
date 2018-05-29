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
    song = Song.new(song_name, artist, self)
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    Song.all.collect do |song|
      song.artist
    end
  end

end
