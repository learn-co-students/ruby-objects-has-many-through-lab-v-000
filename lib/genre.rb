class Genre
attr_accessor :name, :songs

  def initialize(name)
    @name=name
    @songs= []
  end

  def add_song(song)
    @songs << song
  end

  def artists
    new_array=self.songs.collect {|x| x.artist}
    new_array.uniq
  end
  
end
