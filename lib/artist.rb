class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs=[]
  end

  def add_song(song)
    if !@songs.include?(song)
      @songs << song
      song.artist = self
    end
  end

  def songs
    @songs
  end

  def genres
    @songs.map {|song| song.genre}
  end

end

