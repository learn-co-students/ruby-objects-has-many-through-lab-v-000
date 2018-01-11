require 'pry'

class Genre
attr_accessor :songs
attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    # binding.pry
    @songs << song
    # self.songs = song
  end

  def artists
    self.songs.collect do |i|
      i.artist
    end
  end

end
