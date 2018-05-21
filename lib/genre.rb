class Genre

  attr_accessor :name, :songs
  attr_reader :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << name
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end

end
