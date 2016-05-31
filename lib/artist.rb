class Artist

  attr_accessor :name, :songs, :song

  def initialize(name)
    @name = name
    @songs = []  
  end

  def add_song(song)
    self.songs << song
    song.artist = self   
  end

  def genres
    # we need to collect the genres of the songs that belong to the artist.  
    # aka the artist has many genres through songs.
    self.songs.collect do |song|
      song.genre
    end
  end



end
