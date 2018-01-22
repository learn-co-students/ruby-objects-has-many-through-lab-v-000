class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name =  name
    @songs =[]
  end

  def add_song(song)
    if !@songs.include?(song)
      @songs << song
    end
  end
  
  def artists
    @songs.map {|song| song.artist}
  end
  
  
end

