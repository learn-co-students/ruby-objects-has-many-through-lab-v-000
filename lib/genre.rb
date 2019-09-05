class Genre

  attr_accessor :name

  #songs belong to genre
  #has many songs
  #has many artists through its songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
  end


  def songs
    @songs
  end

#has many artists through songs
def artists
  self.songs.collect {|song| song.artist}
end



end
