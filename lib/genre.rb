class Genre
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    self.songs.collect{|s| s.artist}.uniq
  end
end
