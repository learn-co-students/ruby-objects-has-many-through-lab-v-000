class Artist
  attr_accessor :name, :genres, :songs


  def initialize(name)
    @name=name
    @songs=[]
  end

  def add_song(song)
    @songs<<song
    song.artist = self

  end

  def songs
    @songs
  end

  def genres
    new_array=self.songs.collect {|x| x.genre}
    new_array.uniq
  end


end
