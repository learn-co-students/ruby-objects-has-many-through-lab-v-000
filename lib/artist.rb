require 'pry'

class Artist
attr_accessor :name, :genres
attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    # binding.pry
    song.artist = self
  end

  def genres
    self.songs.collect do |i|
      i.genre
    end
  end

end
