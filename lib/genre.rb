class Genre
  attr_accessor :name

  def initialize(name)
    @name = name 
  end
  
  def new_song(name, artist)
    song = Song.new(name, artist, self)
    song
  end
  
 def songs 
    Song.all.select { |song| song.genre == self }
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end
end