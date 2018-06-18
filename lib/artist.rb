require 'pry'

class Artist

  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    self.songs << title
    title.artist = self
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

end