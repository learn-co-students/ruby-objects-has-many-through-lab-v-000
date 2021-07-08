require "pry"
class Artist

attr_reader :name ,:songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs.push(song)
    song.artist = self
  end

  def genres
    #binding.pry
    self.songs.collect {|song| song.genre}
  end


end
