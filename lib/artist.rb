class Artist
  attr_accessor :name, :songs, :genres
  def initialize n
    @name=n
    @songs=[]
    @genres=[]
  end
  def add_song s
    @songs<<s
    s.artist=self
    s.genre.artists<<self
    @genres<<s.genre
    s.artist=self
  end
end
