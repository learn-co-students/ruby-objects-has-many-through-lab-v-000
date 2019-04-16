class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_in)
    @songs << song_in
    song_in.genre = self
  end

  def songs
    @songs
  end

  def artists
    @songs.collect do |each_song|
      each_song.artist
    end
  end
end
