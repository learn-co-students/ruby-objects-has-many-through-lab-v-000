class Genre

  attr_accessor :name, :songs
  attr_reader :artists

  def initialize(name) #initializes with a name and an empty collection of songs
    @name = name
    @songs = []
  end

  def artists
    self.songs.collect do |name|
      name.artist
    end
  end

end
