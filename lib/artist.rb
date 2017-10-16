class Artist
  attr_accessor :songs, :name

  def initialize(name)
    self.songs = []
    self.name = name


  end

  def add_song(song)
    self.songs << song
    song.artist = self
    song.genre.artists << self
  end

  def genres
    songs.collect do |song|
      song.genre
    end
  end


end
