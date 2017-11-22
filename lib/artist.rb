class Artist
  attr_accessor :songs
  attr_reader :name, :genres

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_obj)
    @songs << song_obj
    song_obj.artist = self
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end
