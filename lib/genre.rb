class Genre
  attr_accessor :genre
  attr_reader :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_obj)
    @songs << song_obj
    song_obj.genre = self
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end
end
