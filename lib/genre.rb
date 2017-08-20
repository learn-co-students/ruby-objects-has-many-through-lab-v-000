# Genre
#   #new
#     initializes with a name and an empty collection of songs
#   #name
#     has a name
#   #songs
#     has many songs
#   #artists
#     has many artists, through songs


class Genre
  attr_accessor :name, :artist, :song

  def initialize(name)
    @name = name
    @songs = []
  end

  def name
    @name
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end

#
#
#
#
end
