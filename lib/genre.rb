class Genre

  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(new_song)
    unless @songs.include?(new_song)
      @songs.push(new_song)
    end
    self
  end

  def artists
    @songs.collect do |song|
      song.artist
    end.uniq
  end

end
