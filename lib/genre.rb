class Genre
  attr_accessor :name, :artists

  def initialize(name)
    @name = name
    @songs = []

  end

  def songs
    @songs
  end

  def artists
    self.songs.collect do |x|
      x.artist
    end
  end

end