class Genre

  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end


  def artists
    self.songs.each do |song|
      @artists << song.artist
    end
    @artists
  end

end