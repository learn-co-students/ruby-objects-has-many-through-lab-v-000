class Artist

  attr_accessor :name, :song, :genre #:genres #, #:artist, :artists

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def songs
    @songs
  end

  def genres
    @songs.collect do |song|

    song.genre
#       genres = []
#       genres << genre
    end
  end

end