class Artist

  attr_accessor :name, :genres, :songs

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    @songs << song
    song.artist = self
    song.genre
  end

  def genres
    @songs.collect do |song|
      song.genre
    end 
  end

end
