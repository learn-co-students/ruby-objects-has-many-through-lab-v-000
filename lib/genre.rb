class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # @artists = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    song = Song.new(name, self, artist)
    @songs << song
    song
  end

  def songs
    @songs.collect {|song| song.genre}
  end

  def artists
    @songs.collect {|song| song.artist}
  end

end
