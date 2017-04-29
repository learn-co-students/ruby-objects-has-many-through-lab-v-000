class Genre

  attr_accessor :name

  def initialize(name, songs)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def artists
    self.genres.collect do |genre|
      genre.artist
    end
  end

end
