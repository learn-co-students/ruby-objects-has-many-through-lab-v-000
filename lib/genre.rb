class Genre
  attr_reader :name

  def initialize(name)
    @songs=[]
    @name = name
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect do |s|
      s.artist
    end
  end

  def add_song(song)
    @songs << song
  end

end