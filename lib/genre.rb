class Genre

  attr_reader :name
  attr_accessor :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end

end #<-- end class -->