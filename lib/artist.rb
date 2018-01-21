class Artist
  attr_accessor :song, :genre, :name

  def initialize(name, song)
    @name = name
    @song = []
  end

  def songs
    @songs
  end



end
