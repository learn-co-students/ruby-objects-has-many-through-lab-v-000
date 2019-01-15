class Genre
  attr_accessor :name
  #attr_reader :songs
  def initialize(name)
    @name = name
    @songs = [] #has_many
  end
  
  def songs 
    @songs = Song.all.select{|song| song.genre == self }
  end
  
  def artists #through relationship
    self.songs.map do |song|
      song.artist 
    end
  end
  
  
  

end


  #songs
  #   has many songs (FAILED - 2)
  # #artists
  #   has many artists, through songs (FAILED - 3)