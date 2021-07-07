class Artist
  attr_accessor :name
  def initialize(name)
    @name=name
    @songs=[]
  end
  def add_song(s)
    @songs << s
    s.artist =self
  end
  def songs
    @songs
  end
  def genres
    @songs.map{|x|x.genre}
  end
end
