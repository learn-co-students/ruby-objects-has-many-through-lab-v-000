class Genre

  attr_accessor :name, :song, :artist

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def name
    @name
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    self.songs.each do |song|
      @artists << song.artist
    end
    @artists
  end

end
