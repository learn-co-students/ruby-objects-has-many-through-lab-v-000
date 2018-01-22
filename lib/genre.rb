class Genre

  attr_accessor :songs, :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def artists
    artists = []
    @songs.each do |song|
      artists << song.artist
    end
    return artists
  end
end