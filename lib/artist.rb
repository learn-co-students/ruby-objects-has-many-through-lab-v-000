class Artist
  attr_accessor :name, :songs

  #///CLASS METHODS ///#

  #///INSTANCE METHODS ///#
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def genres
    songs.collect do |song|
      song.genre
    end
  end


end