class Genre
  attr_accessor :name, :songs, :artists
  def initialize n
    @name=n
    @songs=[]
    @artists=[]
  end
end
