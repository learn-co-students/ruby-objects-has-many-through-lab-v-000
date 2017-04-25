class Genre
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs=[]
  end
  def songs
    @songs
  end
  def artists
    @songs.collect {|song|
      song.artist
    }

  end
end
