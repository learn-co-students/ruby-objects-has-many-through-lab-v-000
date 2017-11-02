class Genre

  #Variables
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  #Methods
  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end

end
