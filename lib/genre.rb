class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs.map do |songing|
      songing 
    end
  end 

  def artists
    @songs.map do |songs|
      songs.artist
    end
  end 

end 