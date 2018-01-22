require 'pry'

class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(title)
    @songs << title
    # binding.pry
    title.artist = self
  end

  def genres
    self.songs.collect { |song| song.genre }
  end

end