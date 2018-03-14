require 'pry'
class Artist
  attr_accessor :songs, :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(s)
    self.songs << s
    s.artist = self
  end

  def genres
    self.songs.collect do |s|
      s.genre
    end
  end

end
