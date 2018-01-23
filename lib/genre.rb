class Genre
  attr_accessor :name, :songs, :artists

  def initialize(name)
    @name = name
    @songs = []
  end

  def artists
    @songs.collect do |song_obj|
      song_obj.artist
    end 
  end

end
