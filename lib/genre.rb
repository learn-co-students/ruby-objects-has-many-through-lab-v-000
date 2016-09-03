class Genre

  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs << song
    song.genre = self
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end


end
