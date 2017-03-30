class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    #binding.pry
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    #binding.pry
  end

  def artists
    @songs.collect do |song|
      song.artist
      #binding.pry
    end
  end
end
