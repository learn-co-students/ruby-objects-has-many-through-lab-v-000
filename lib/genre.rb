class Genre
  require 'pry'
  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @songs = []

  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def artists
    # binding.pry
    @songs.map {|s| s.artist}
  end
end
