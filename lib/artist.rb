class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    #careful of typo here. we need to add to collection @songs
    song.artist = self
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

  def songs
    @songs
    #careful of typo here. we need to read collection @songs
  end

end
