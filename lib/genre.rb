require "pry"

class Genre

  attr_accessor :songs, :name, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def add_song(song)
    @songs << song
    song.genre = self
    @artists << song.artist if !@artists.detect(song.artist)
  end

  def artists
    self.songs.collect {|x| x.artist}
  end

end
