class Genre

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
    #binding.pry
  end

  def add_song(song)
    @songs << song
  end


  def artists
    @songs.collect do |song|
      song.artist
    end
  end
end
