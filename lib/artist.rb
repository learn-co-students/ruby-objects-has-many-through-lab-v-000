 

class Artist
  attr_accessor :songs, :name
  attr_reader

  def initialize(artist_name)
    @songs = []
    @name = artist_name
  end

  def add_song(song_inst)
    @songs << song_inst
    song_inst.artist = self
  end

  def self.songs
    @songs
  end

  def genres
    @songs.collect{|song| song.genre}
  end
end