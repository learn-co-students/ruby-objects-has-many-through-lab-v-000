class Genre
  attr_accessor :name, :songs

  def initialize(n)
    @name = n
    @songs = []
  end

  def artists
    @songs.collect do |s|
      s.artist
    end
  end
end
