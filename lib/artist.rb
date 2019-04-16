class Artist

  attr_accessor :name

  def initialize(input_name)
    @name = input_name
    @songs = []
  end

  def add_song(song_in)
    @songs << song_in
    song_in.artist = self
  end

  def songs
    @songs
  end

  def genres
    self.songs.collect do |each_song|
      each_song.genre
    end
  end
end
