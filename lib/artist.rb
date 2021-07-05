class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self #tells song that it belongs to artist
  end

  def songs
    @songs
  end

  def genres
  self.songs.collect {|song| song.genre} #utilizes relationships to show the artist's songs' genres
  end

end
