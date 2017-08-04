class Artist

  attr_accessor :name

  def initialize(name)
    @name=name
    @songs= []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    #tells the song that it belongs to that artist
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect do |s|
      s.genre
      #iterates over that artists songs
      # (array inside instance of class Artist)
      # and collects each genre.
    end
  end

end
