class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end


  def artists
    artists = []
    self.songs.each do |song|
      artists << song.artist
    end
    return artists
  end




end
