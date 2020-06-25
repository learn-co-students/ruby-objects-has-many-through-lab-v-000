class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end  
  
  def self.all
    @@all
  end
  
  def songs
   Song.all.select{|song| song.genre == self}
  end
  
  # A genre has many artist through its song
  def artists
    songs.map do |song| 
      song.artist
    end
  end

end