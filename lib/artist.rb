class Artist
  attr_accessor :name

  @@song_count = 0
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    @songs
  end

  def add_song_by_name(songname)
    song = Song.new(songname)
    song.artist = self
    @songs << song
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def genres
    genres = []
    @songs.each {|song|
      genres << song.genre
    }
    genres.uniq
  end


end
