class Artist

  attr_accessor :songs, :name, :genres

  def initialize(name, songs = [])
    @name = name
    @songs = songs
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end





end