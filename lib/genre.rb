

class Genre
  attr_accessor :name, :songs

  def initialize(genre)
    @name = genre
    @songs = []
  end

  def add_song(song_inst)
    @songs << song_inst
  end

  def artists
    @songs.collect{|song| song.artist}
  end
end