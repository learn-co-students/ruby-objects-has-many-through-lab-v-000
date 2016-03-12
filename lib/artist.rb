class Artist
	attr_accessor :name, :songs

	def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    song.genre.artists << self
  end

  def genres
    songs.collect { |song| song.genre }
  end
end