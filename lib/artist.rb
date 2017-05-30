class Artist

  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.add_artist(self)
  end

  def name
    @name
  end

  def genres
    @songs.collect do |song|
      song.genre
    end.uniq
  end


end
