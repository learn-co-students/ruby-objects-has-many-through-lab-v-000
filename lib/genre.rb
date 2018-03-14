class Genre
  attr_accessor :songs, :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(s)
    self.songs << s
  end

  def artists
    self.songs.collect do |s|
      s.artist
    end
  end

end
