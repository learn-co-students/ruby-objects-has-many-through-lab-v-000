class Genre
  attr_accessor :name, :songs

  #initializes with a name and an empty collection of songs
  # has a name and many songs
  def initialize(name) 
    @name = name
    @songs = []
  end

  # has many artists, through songs
  def artists
    self.songs.collect {|x| x.artist}
  end 
end