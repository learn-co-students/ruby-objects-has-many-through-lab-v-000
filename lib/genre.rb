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

  def songs
    # Song.all.select do |song|
    #     song.genre == self
    # end
    Song.all {|song| song.genre == self}
  end

  def artists
    songs.map {|song| song.artist}
  end

  def add_song(song)
    songs << song
  end
end
