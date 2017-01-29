class Genre

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
    @all << self
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    @songs.collect {|song| song.artist}
  end


end
