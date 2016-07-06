require "pry"
class Genre

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  # a genre has many songs
  def add_song(song)
    songs << song
  end

  # a genre has many artists through its songs.
  def artists
    @songs.collect {|song| song.artist}
  end

end
