class Genre

  attr_accessor :name

  #when you create a genre, all you specify is the name and generate an empty array that will get filled with songs
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    #Genres also need to know about songs.
    self.songs << song
  end

  def songs
    @songs
  end

  #this completes the reciprocity, because the genre can now tell us what artists it is associated with
  def artists()
    @songs.collect do |song|
    song.artist
    end
  end



end
