class Artist

  attr_accessor :name, :songs, :genre

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
      # this is an instance method so self == instance of Artist
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect do |object|
      object.genre
    end
  end


  end
