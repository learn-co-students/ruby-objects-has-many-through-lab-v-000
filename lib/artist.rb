class Artist

#An Artist has a name and songs. The various songs are under different genres. When you add a new song to the artist's list of songs (array),
#that song (object) also needs to be labeled with this Artist instance (object). Also, that song (object)'s genre's artist's will have this Artist (object).

  attr_accessor :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    song.genre.artists << self
  end

  def genres
    songs.each {|song| @genres << song.genre}
    @genres
  end
end
