class Genre

  attr_reader :name
  attr_accessor :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def songs
    @songs.each do |song|
      song.genre = self
    end
  end

end
