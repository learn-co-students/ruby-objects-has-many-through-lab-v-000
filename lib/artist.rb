class Artist
  attr_accessor :song
  attr_reader :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end





end
=begin


**The `Artist` model:**

* An artist is initialized with a name and an empty `@songs` array.
* The `Artist` class needs an instance method, `#add_song`, that takes in an argument of a song and adds that song to the artist's collection of songs. The `#add_song` method should also tell the song that it belongs to that artist.
* The `Artist` class needs an instance method, `#songs`, that returns the `@songs` array.
* The `Artist` class needs an instance method, `#genres` that iterates over that artist's songs and collects the genre of each song.

=end