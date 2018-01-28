class Genre

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    artists_arr = []
    @songs.each do |song|
      artists_arr << song.artist
    end
    artists_arr
  end

end
