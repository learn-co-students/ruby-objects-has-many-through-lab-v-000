class Song
  attr_accessor :name, :genre, :artist
  def initialize(n,g)
    @name=n
    @genre=g
    @artist=nil
    g.songs<<self
  end
end
