class Artist
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song,genre,artist)
    # @songs << Song.new(song, genre)
    # @song.artist = self
    Song.new(song,genre,artist)
  end

  def songs
    @songs.select {|song| song.artist}
  end

  def genres
    @songs.collect {|song| song.genre}
  end

end
