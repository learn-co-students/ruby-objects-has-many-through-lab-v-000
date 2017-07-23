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
    artists_collection = []
    @songs.collect do |song|
      artists_collection << song.artist
    end
    artists_collection
  end

end
